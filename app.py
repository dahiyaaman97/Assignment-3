from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_cloud():
    return 'Hello from Dahiya ECS Container!'

if __name__ == "__main__":
    # Use 0.0.0.0 as host and a suitable port for Docker containers
    app.run(host='0.0.0.0', port=5000)
