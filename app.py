# app.py (Basic Flask Server Example)
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Stock Prediction App Running!"

if __name__ == "__main__":
    app.run(debug=True)
