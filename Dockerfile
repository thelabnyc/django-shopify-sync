FROM registry.gitlab.com/thelabnyc/python:py313@sha256:ef829aa095beb081cf1c8c6868ef38644176b297b555144bce07bc9c3205038a

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
