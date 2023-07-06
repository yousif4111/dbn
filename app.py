from flask import Flask
import numpy as np
app = Flask(__name__)

@app.route('/')
def home():
    return "Hey, I think now Yousif has a good idea about Docker"

if __name__ == "__main__":
    app.run(debug=True)