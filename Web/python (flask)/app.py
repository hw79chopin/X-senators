import sys
import json
import numpy as np
import pandas as pd
from flask import Flask, request, jsonify
from gensim.models import Word2Vec, FastText
from sklearn.metrics.pairwise import cosine_similarity

app = Flask(__name__)

model_21 = FastText.load("models/FasttextModel ver4.0 (iteration 500, 21th).bin")
senators_21 = pd.read_csv('data/senator_21 all info ver3.0.csv')

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

    print(user_input)

    # get user_vector
    list_vector = [ ]
    for word in user_input.split('/'):
        if word in word_dict.keys():
            list_vector.append(word_dict[word])
    user_vector = np.sum(list_vector, axis=0).tolist()

    # find similar senator
    similarity = {}
    for idx in senators_21.index:
        if senators_21.loc[idx]['vector'] != '0.0':
            sim = cosine_similarity(np.array(user_vector).reshape(1,-1), np.array([float(i) for i in senators_21.loc[idx]['vector'][1:-1].split(', ')]).reshape(1,-1))
        similarity[str(senators_21.loc[idx]['id'])] = float(sim)
    similarity = {key: value for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)}
    rating = [key for key, value in sorted(similarity.items(), key=lambda item: item[1], reverse=True)]
    top_5 = rating[:8]
    result = {}
    for i in top_5:
        result[i] = str(abs(round((similarity[i]*100)+60, 2))) + "%"

    return jsonify(
        message = result
    )
if __name__ == "__main__":
    app.run(host='localhost', port=5000)