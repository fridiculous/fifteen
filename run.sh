#!/bin/bash

MODULE=${MODULE:-website}

sed -i "s#module=website.wsgi:application#module=${MODULE}.wsgi:application#g" /home/ubuntu/fifteen/uwsgi.ini

if [ ! -f "/home/ubuntu/fifteen/manage.py" ]
then
	echo "creating basic django project (module: ${MODULE})"
	django-admin.py startproject ${MODULE} /home/ubuntu/fifteen/
fi

/usr/bin/supervisord