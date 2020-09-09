#!/usr/bin/python3
""" Flask App runner """
from flask import Flask, Blueprint
from models import storage
# from api.v1.views import app_views
from os import getenv
from api.v1.views.index import *


app = Flask(__name__)
app.register_blueprint(app_views)
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True
HBNB_API_PORT = getenv('HBNB_API_PORT') if getenv('HBNB_API_PORT') else 5000 
HBNB_API_HOST = getenv('HBNB_API_HOST') if getenv('HBNB_API_HOST') else "0.0.0.0"

@app.teardown_appcontext
def teardown_app(error):
    """ Handle Error
    """

    storage.close()

if __name__ == '__main__':
    app.run(host=HBNB_API_HOST, port=HBNB_API_PORT, threaded=True)
