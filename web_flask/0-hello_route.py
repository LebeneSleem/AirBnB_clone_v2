#!/usr/bin/python3

"""
This module defines a simple Flask web application.

The application has a single route ("/") that displays
the message "Hello HBNB!".
"""

from flask import Flask

app = Flask(__name__)

@app.route('/', strict_slashes=False)
def hello():
    """Return a given string"""
    return ("Hello HBNB!")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=None)
