#!/usr/bin/env python
# -*- coding: utf-8 -*-

from flask import Flask
from flask import render_template, request, flash, redirect, url_for
from modele import *
from forms import *

app = Flask(__name__)

# widok domyślny


@app.route("/")
def index():
    return render_template('index.html')

def flash_errors(form):
    for field, errors in form.errors.items():
        for error in errors:
            if type(error) is list:
                error = error[0]
            flash("Błąd: {}. Pole: {}".format(
                error,
                getattr(form, field).label.text))

@app.route("/lista")
def lista():
    uczniowie = Uczen.select()
    return render_template('lista.html', uczniowie=uczniowie)


