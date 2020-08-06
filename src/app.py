from flask import Flask, render_template

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello():
  answer = {"name": "test", "birthday": "20200801"}

  return render_template('index.html', answer=answer)


if __name__ == '__main__':
  app.run()