from flask import Flask
import os

app = Flask(__name__)


@app.route('/')
def hello_world():
    current_env = os.getenv("NAME", "dev")
    return 'Hello World! Connecting to ' + current_env


if __name__ == '__main__':
    app.run()
