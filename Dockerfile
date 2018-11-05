FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY https://github.com/sainimmakayala/flaskhelloworld/requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY https://github.com/sainimmakayala/flaskhelloworld .

LABEL maintainer="Sai <sai.sai@gmail.com>"

CMD gunicorn -c gunicorn.py "hello.app:create_app()"
