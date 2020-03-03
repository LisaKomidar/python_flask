# app.py - a minimal flask api using flask_restful
from flask import Flask, render_template
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)


@app.route("/")
def home():
    return render_template('index.html')
    
    ##return "Hello World!"


##class HelloWorld(Resource):
##    def get(self):
##        return {'hello': 'world'}

##api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
    
    
##@app.route('/')
##def hello_world():
    ##return render_template('index.html')

##if __name__ == '__main__':
##    app.run(debug=True)