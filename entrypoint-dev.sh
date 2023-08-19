#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --noinput

gunicorn entrypoint-prod.sh