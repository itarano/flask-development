# test_app.py
from app import app
from flask import json

def test_add():        
    response = app.test_client().get('/')

    data = json.loads(response.get_data(as_text=True))
    print(data)

    assert response.status_code == 200
    assert data['hello'] == "world"