<h1 align="center"><strong>🔎 X-senators (국회의원 추천 Web)</strong></h3>

`#node` `#NLP` `#word2vec` `#Fasttext` `#Flask` 

# 🚦 1. X-senators 서비스 소개
- 개요: 현재 정치후원금은 1인당 800원으로 매우 저조한 상태이다. '자신과 맞는 국회의원이 누군지 몰라서 그런 게 아닐까?'하는 생각에 후원자에게 맞는 국회의원을 추천해주는 X-senators를 생각하게 됨
- 목적: 후원자의 관심사와 가장 유사한 국회의원을 추천해줘 '누구에게 후원금을 줘야할지?'에 대한 고민에 답을 주고자 함

# 🚦 2. 추천방식
- 모델: Fasttext, Word2vec 중 택 1
- Doc2vec을 사용해보았으나 국회의원 벡터가 매우 안 좋게 나왔음

## 2-1) 국회의원 벡터 생성
- Fasttext, Word2vec 모델로 모든 법안의 단어들을 임베딩시킴
- 법안에 들어가는 단어 벡터를 모두 더해서 법안 벡터를 생성하였음
- 한 국회의원이 발의한 모든 법안 벡터를 가중평균 내어 국회의원벡터를 만들었음

## 2-2) 사용자 벡터 생성
- 사용자가 관심사를 입력 받음
- 사용자 벡터를 mecab으로 tokenize를 하고 이미 학습된 단어모델의 벡터를 전부 합함

## 2-3) Cosine similarity 계산
- 사용자 벡터와 국회의원 벡터 사이의 cosine similarity를 구한다.
- 유사도가 높은 순으로 정리해서 Top 8 국회의원을 뽑았다.

# 🚦 3. Web 시연하기

## 3-1) 프로그램 설치
- [python3 설치](https://www.python.org/downloads/)
- [MySQL 설치](https://dev.mysql.com/downloads/)
- [node.js 설치](https://nodejs.org/ko/download/)

## 3-2) 필요 라이브러리 설치 (node.js)
- 우선 이 github repo를 다운 or git clone 하기
- 그 다음에 [Web] 폴더에 들어가서 cmd창을 실행한다.
- 그리고 밑에 명령을 차례대로 입력한다.
```console
$ npm init
$ npm install --save-dev nodemon
$ npm install --save express body-parser ejs mysql2 sequelize express-session connect- mongodb-session bcryptjs csurf connect-flash nodemailer nodemailer-sendgrid- transport cookie-parser express-session-sequelize python-shell request-promise
```

## 3-3) 필요 라이브러리 설치 (python)
- cmd창을 열고 아래 명령들을 입력한다.
```console
$ pip install --upgrade pip
$ pip install pymysql numpy pandas genism flask sklearn
```
- 위 명령을 실행완료 후 [이 사이트](https://konlpy.org/ko/v0.5.2/install/)를 참고하여 konlpy를 설치한다.
- <font color="red">위 추천시스템은 사용자사전을 추가해주기 위해 Mecab() tokenizer를 사용하는데 Mecab() tokenizer는 Window에서 지원되지 않는다.</font>

## 3-3) 필요 라이브러리 설치 (MySQL)
- [Web] => [MySQL] 폴더에 들어가면 9개의 query문들이 있다.
- 쿼리 문들을 순서대로 실행해서 테이블들과 데이터를 생성해준다.
- 파일명 `순서대로` 실행하셔야 에러가 뜨지 않는다. (순서대로 하지 않으면 FK 설정 때문에 에러가 난다.)

## 3-4) Word2vec, Fasttext 모델 학습하기
- Word2vec 모델은 [Web] => [python (flask)] => [model]에 이미 학습된 모델이 있다.  
  (iteration=500, size=100, window=5, min_count=10, workers=12, hs=0, sg=1) (skip-gram, negative sampling)
- Fastttext 모델의 경우 1GB가 넘기 때문에 깃헙에 업로드가 되지 않아 새로 학습시켜야 합니다.
- Fasttext, word2vec 학습하는 jupyter는 [여기서](https://github.com/hw79chopin/National-assembly-member-recommder/tree/master/word%20embedding) 확인할 수 있습니다.

## 3-5) Web 시작하기
- [Web] 폴더에서 cmd창을 열어주고 아래 명령을 입력한다.
```console
$ npm start
```

- [Web] 폴더 내 [python (flask)] 폴더에서 cmd창을 열어주고 아래 명령을 입력한다.
- flask 서버를 통해서 추천 결과를 node 서버와 주고 받아야 해서 flask도 실행해주셔서 합니다.
```console
$ flask run
```

- 크롬을 열어서 주소창에 http://localhost:3000/를 입력하면 X-senators를 체험할 수 있다.

# 🚦 4. Web 시연화면

---

<h3 align="center"><strong>(1) 메인화면 접속하기</strong></h3>

![index](images/index.png)


<br>

---

<h3 align="center"><strong>(2) 로그인 하기!</strong></h3>

<h4 align="center"><strong>로그인을 해야 국회의원 추천결과를 받아볼 수 있습니다</strong></h4>


![logIn](images/logIn.png)


<br>

---

<h3 align="center"><strong>(3) 관심사 입력하기</strong></h3>
<h4 align="center">오른쪽 위 '나의 국회의원은?' 배너에 들어가면 사용자 관심사를 입력하는 창이 나옵니다.</h4>
<h5 align="center">예시) 중소기업 운영하고 있는 사장입니다. 코로나 때문에 많이 힘듭니다. 자영업자들에게 지원을 해주셨으면 합니다.</h5>

![input](images/input.png)

<br>

---

<h3 align="center"><strong>(4) 국회의원 추천결과</strong></h3>
<h4 align="center"><strong>추천된 국회의원과 사용자와의 유사도가 나옵니다.</strong></h4>

![top8](images/top8.png)

<br>

---

<h3 align="center"><strong>(5) 국회의원 정보 살펴보기 - Demographic 정보</strong></h3>
<h4 align="center"><strong>Top8 국회의원 중에서 자세히 보고싶은 국회의원을 클릭하면 다음과 같이 국회의원 정보가 나옵니다.</strong></h4>

![senator_Info](images/senator_Info.png)

<br>

---

<h3 align="center"><strong>(5) 국회의원 정보 살펴보기 - 법안</strong></h3>
<h4 align="center"><strong>국회의원이 발의한 법안 중 사용자의 관심사와 가장 유사한 법안 5개가 나옵니다.</strong></h4>

![bills](images/bills.png)

<br>

---

<h3 align="center"><strong>(6) 후원하기 </strong></h3>
<h4 align="center"><strong>국회의원 사진 밑에 후원하기 버튼을 누르면 다음과 같이 후원창이 나옵니다.</strong></h4>
<h4 align="center"><strong>성, 이름, 메세지, 금액, 영수증 등을 체크하시고 '후원하기' 버튼을 누르면 됩니다.</strong></h4>

![sponsor](images/sponsor.png)

<br>

---

<h3 align="center"><strong>(7) 성공적인 후원!</strong></h3>
<h4 align="center"><strong>'후원하기' 버튼을 누르면 후원 성공창이 뜹니다.</strong></h4>
<h4 align="center"><strong>결제 API는 연결하지 않아서 가상으로 후원을 하는 것이고 MySQL DB에 sponsorSenators 테이블에 후원정보가 입력됩니다.</strong></h4>

![success](images/success.png)

<br>

---



<h3 align="center"><strong>끗! 🙌</strong></h3>
