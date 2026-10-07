from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify(
        application="devops-python-lab",
        message="Welcome to my DevOps lab"
    )

@app.route("/status")
def status():
    return jsonify(
        status="healthy",
        application="devops-python-lab",
        version="1.1"
    )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)