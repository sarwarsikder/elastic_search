#!/bin/sh
pip install --upgrade pip
pip install -r requirements.txt
pip install djangorestframework
pip install markdown       # Markdown support for the browsable API.
pip install django-filter

python manage.py makemigrations
python manage.py migrate
exec "$@"
