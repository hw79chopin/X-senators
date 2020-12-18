<h1 align="center"><strong>🔎 X-senators (국회의원 추천 Web)</strong></h3>

`#python` `#NLP` `#word2vec` `#Flask` `#ngrok`

# 🚦 1. X-senators 서비스 소개
- 아직 작성 중입니다.

# 🚦 2. 추천방식
- 

## 3-1) 
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

<h3 align="center"><strong>끗! 🙌</strong></h3>
