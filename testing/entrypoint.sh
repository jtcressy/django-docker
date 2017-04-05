#! /bin/bash
#Check if there's an existing app mounted to /app and run it
if [ -f "/app/manage.py" ]; then
	python /app/manage.py runserver
else
	cd /app
	django-admin startproject $APP_NAME
	python /app/manage.py runserver
fi

