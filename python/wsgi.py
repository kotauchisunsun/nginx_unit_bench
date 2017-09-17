from flask import Flask

application = Flask(__name__)


@application.route("/")
def index():
    return "Hello Python World!!"
