FROM ubuntu
MAINTAINER Simon Frid <simon.frid@gmail.com>
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential git python3 python3-dev python3-pip nginx sqlite3 supervisor

RUN pip3 install uwsgi

ADD . /home/ubuntu/fifteen/

RUN pip3 install -r /home/ubuntu/fifteen/requirements.txt

EXPOSE 80
CMD ["python3", "/home/ubuntu/fifteen/manage.py", "runserver", "0.0.0.0:80"]