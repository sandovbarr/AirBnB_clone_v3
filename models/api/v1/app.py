#!/usr/bin/python3
""" Flask App runner
"""

from flask import Flask, Blueprint
from models import storage
from api.v1.views import app_views
app = Flask(__name__)
app.register_blueprint(app_views)
HBNB_API_PORT = 5000
HBNB_API_HOST = 0.0.0.0

@app.teardown_appcontext
def teardown_app(error):
    """ Handle Error
    """

    storage.close()

if __name__ == '__main__':
    app.run(host=HBNB_API_HOST, port=HBNB_API_PORT, threaded=True)
