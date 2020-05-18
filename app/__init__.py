from flask import Flask
app = Flask(__name__)
from templates import views
@app.route("/")
def hello():
    return "Hello, I love Digital Ocean!"
if __name__ == "__main__":
    app.run()
    