#! /bin/bash
cd /app
echo $(ls)
#Check if there's an existing app mounted to /app and run it
if [ ! -f /app/$APP_NAME/manage.py ]; then
	django-admin startproject $APP_NAME
	python /app/$APP_NAME/manage.py runserver
else
	ls
	python /app/$APP_NAME/manage.py runserver
fi

