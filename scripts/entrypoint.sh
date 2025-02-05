#!/bin/sh

set -e

echo "collecting static"
python manage.py collectstatic --noinput
echo "Finished collecting static"
#python manage.py runserver 0.0.0.0:8000

uwsgi --socket :8000 --master --enable-threads --module BarendoSystems.wsgi