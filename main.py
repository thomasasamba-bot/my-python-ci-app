from flask import Flask
from calculator import add

app = Flask(__name__)

@app.route('/')
def home():
    result = add(3, 5)
    return f"The result of addition is: {result}"

@app.route('/health')
def health():
    return "OK", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)