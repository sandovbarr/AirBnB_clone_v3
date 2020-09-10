#!/usr/bin/python3
''' endpoints for states views '''
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage
from models.amenity import Amenity
from models.base_model import BaseModel, Base
from models.city import City
from models.place import Place
from models.review import Review
from models.state import State
from models.user import User
from models import storage


@app_views.route('/states', methods=['GET', 'POST'], strict_slashes=False)
def states_recovery():
    """ Retrieves the list of all State objects: GET """
    if request.method == 'GET':
        all_st = storage.all(State)
        all_st_ls = []
        for state_obj in all_st.values():
            all_st_ls.append(state_obj.to_dict())
        return jsonify(all_st_ls)
    if request.method == 'POST':
        if not request.is_json:
            abort(400, description='Not a JSON')
        json_data = request.get_json()
        if 'name' not in json_data:
            abort(400, description='Missing name')
        newState = State(**json_data)
        storage.new(newState)
        storage.save()
        return jsonify(newState.to_dict()), 201


@app_views.route('/states/<state_id>', methods=['GET', 'PUT', 'DELETE'])
def count_each_state(state_id):
    '''
        Retrieves a State object: GET /api/v1/states/<state_id>
    '''
    s_obj = storage.get(State, state_id)
    if request.method == 'GET':
        if s_obj is not None:
            return jsonify(s_obj.to_dict())
    if request.method == 'DELETE':
        if s_obj is not None:
            storage.delete(s_obj)
            storage.save()
            return jsonify({}), 200
    abort(404)


# Creates a State: POST /api/v1/states
# You must use request.get_json from Flask to transform the HTTP body request to a dictionary
# If the HTTP body request is not valid JSON, raise a 400 error with the message Not a JSON
# If the dictionary doesn’t contain the key name, raise a 400 error with the message Missing name
# Returns the new State with the status code 201

# Updates a State object: PUT /api/v1/states/<state_id>
# If the state_id is not linked to any State object, raise a 404 error
# You must use request.get_json from Flask to transform the HTTP body request to a dictionary
# If the HTTP body request is not valid JSON, raise a 400 error with the message Not a JSON
# Update the State object with all key-value pairs of the dictionary.
# Ignore keys: id, created_at and updated_at
# Returns the State object with the status code 200
