FROM registry.gitlab.com/thelabnyc/python:py313@sha256:a6d6a1b7ca377cd1a8e96e09dd93791cf3929675d7ec1d0ea9dce9177bfc1b1e

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
