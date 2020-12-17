<h1 align="center"><strong>🔎 X-senators (반려동물 간식 추천시스템)</strong></h3>

`#python` `#NLP` `#word2vec` `#Flask` `#ngrok`

# 🚦 1. X-senators 서비스 소개
- Petr.eat은 `인공지능 기반으로 반려동물 수제간식을 추천`해주는 커머스 플랫폼이다.
- 기존 반려동물 간식을 제공해주는 사이트에서는 추천시스템을 사용하고 있지 않았다. 그래서 수제간식을 반려동물의 상태(건강, 알러지, 기호식품 등)에 따라 추천해주는 서비스를 만들고자 했다.
- 상품별로 효능, 성분, #태그 등의 상품정보가 있었고 이를 기반으로 한 추천시스템을 만들었다. int로 된 값들은 아예 없었고 모두 텍스트 기반이었다.
- 내가 Petr.eat에서 `추천시스템 개발`을 맡았다.

# 🚦 2. 추천방식
- 약 15여개 업체에서 공급받기로 한 상품은 약 100여개였다. 각 상품별로 유사한 상품과 반려동물 상태를 고려한 filter를 개발하고자 하였다.
- 사용자의 구매내역에 따른 collaborative filtering과 log data에 따른 추천시스템도 구축해보고자 했으나 사용자 데이터의 부족으로 하지 못하였다.
- 크케 추천시스템을 3가지 단계로 만들어보았다.
  - TF-IDF
  - Word2vec & TF-IDF
  
## 3-1) Flask 쓰는 방법은 요로로콤
``` python
 from flask import Flask, render_template, request, redirect, url_for  ## Web 구현용

 app = Flask(__name__)   # Flask 객체를 생성해주고
 
 @app.route('/home', methods=['POST'])   # 원하는 페이지를 렌더링!
 def index():
     return render_template('home.html')   # 인스턴스 내 templates 폴더에서 html 파일을 찾아서 실행

 @app.route('/index', methods=['POST'])  
     return render_template('index.html')   
 
 if __name__ == '__main__':
     app.run(host = '0.0.0.0')  # 모든 ip에 대해서 listen함. Flask를 실행해줌. 앞에 있어도 되고 뒤에 있어도 됨
```

## 3-2) ngrok로 외부에서 로컬서버 접속 환경 구성하기
- Flask를 AWS EC2에 올려보려고 했는데 실패했음. 그래서 Flask를 로컬에서 돌리고 외부에서 접속이 가능하도록 구축했다.
- 설치는 이렇게 하면 된다.
```python
$ brew cask install ngrok
```

- 사용은 이렇게 하면 된다.
```python
$ ngrok http 로컬서버포트
$ ngrok http 5000
```
<h3 align="center"><strong>끗! 🙌</strong></h3>
