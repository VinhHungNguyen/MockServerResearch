from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/hello")
def hello():
    print("Request hello\n")
    return jsonify({ "message": "Hello World" })

if __name__ == "__main__":
    app.run()

