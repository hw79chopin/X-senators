import sys
import json
import pymysql
import numpy as np
import pandas as pd
from konlpy.tag import Mecab
from flask import Flask, request, jsonify
from gensim.models import Word2Vec, FastText
from sklearn.metrics.pairwise import cosine_similarity

mecab = Mecab()
def tokenized_mecab(data):
    result = mecab.morphs(data)
    result = ' '.join(result)
    return result

def out_stopwords(data, list_stopwords):
    data = data.split(" ")
    list_stopwords = list_stopwords
    data = [token for token in data if token not in list_stopwords]
    return data


url= "data/stopwords ver1.0.txt"
stopwords_file = list(open(url,"r"))
list_stopword = []
for i in stopwords_file:
    list_stopword.append(i[:-1])

app = Flask(__name__)

# Connect to DB
db = pymysql.connect(
    user='root', 
    port = 3306,
    password='12341234', 
    host='127.0.0.1', 
    charset='utf8'
)

cursor = db.cursor()
cursor.execute("USE mySenators")

# get Senators
cursor.execute("SELECT id, vector FROM senators")
senators_21 = pd.DataFrame(cursor.fetchall(), columns=['id', 'vector'])
db.close()

model_21 = FastText.load("models/FasttextModel ver4.0 (전체, stopwords 제거, iteration 100).bin")

word_dict = {}
for vocab in model_21.wv.index2word:
    word_dict[vocab] = model_21.wv[vocab]

@app.route('/')
def index():
    return "Flask server"

@app.route('/recommend', methods=['POST'])
def recommend():
    args = request.get_json(force=True)
    user_input = args.get('user_input', [])

    tokenized_input = tokenized_mecab(user_input)
    tokenized_input_outStopwords = out_stopwords(tokenized_input, list_stopword)
    
    # get user_vector
    list_vector = []
    for word in tokenized_input_outStopwords:
        if word in word_dict.keys():
            list_vector.append(word_dict[word])
    user_input_tokenized = (np.sum(list_vector, axis=0) / len(list_vector)).tolist()
    # find similar senator
    similarity = {}
    for idx in senators_21.index:
        if senators_21.loc[idx]['vector'] != '0.0':
            sim = cosine_similarity(np.array(user_input_tokenized).reshape(1,-1), np.array([float(i) for i in senators_21.loc[idx]['vector'][1:-1].split(', ')]).reshape(1,-1))
        similarity[str(senators_21.loc[idx]['id'])] = float(sim)
    similarity = {key: value for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)}
    rating = [key for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)]
    top_5 = rating[:8]
    result = {}
    for i in top_5:
        result[i] = str(abs(round((similarity[i]*100), 2))) + "%"

    return jsonify(
        vector = str(user_input_tokenized),
        message = result
    )

@app.route('/similar_bills', methods=['POST'])
def similar_bills():
    args = request.get_json(force=True)
    user_vector = args.get('userVector', [])
    senator_id = args.get('senatorId', [])

    db = pymysql.connect(
    user='root', 
    port = 3306,
    password='12341234', 
    host='127.0.0.1', 
    charset='utf8'
    )

    cursor = db.cursor()
    cursor.execute("USE mySenators")

    # get proposedBills
    cursor.execute("SELECT * FROM billsProposers")
    proposed_bills = pd.DataFrame(cursor.fetchall(), columns=['snt_id', 'bill_id'])
    
    list_proposed_bills_id = proposed_bills[proposed_bills['snt_id']==int(senator_id)]['bill_id'].tolist()


    cursor.execute("SELECT id, vector FROM bills WHERE id IN ({})".format(str(list_proposed_bills_id)[1:-1]))

    proposed_bills_vector = pd.DataFrame(cursor.fetchall(), columns=['id', 'vector'])
    db.close()
    similarity = {}
    for idx in proposed_bills_vector.index:
        if proposed_bills_vector.loc[idx]['vector'] != '0.0':
            sim = cosine_similarity(np.array([float(i) for i in user_vector[1:-1].split(', ')]).reshape(1,-1), np.array([float(i) for i in proposed_bills_vector.loc[idx]['vector'][1:-1].split(', ')]).reshape(1,-1))
        similarity[str(proposed_bills_vector.loc[idx]['id'])] = float(sim)
    similarity = {key: value for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)}
    rating = [key for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)]
    top_5 = rating[:5]

    result = {}
    for i in top_5:
        result[i] = str(abs(round((similarity[i]*100), 2))) + "%"

    return jsonify(
        message = result
    )



if __name__ == "__main__":
    app.run(host='localhost', port=5000)