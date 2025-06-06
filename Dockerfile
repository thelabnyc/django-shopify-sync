FROM registry.gitlab.com/thelabnyc/python:3.13.735@sha256:e794ee002a1f245454759642987379928978a56245adffeab029edb8a23a032f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
