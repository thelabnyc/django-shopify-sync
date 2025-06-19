FROM registry.gitlab.com/thelabnyc/python:3.13.757@sha256:f0a88813fb9c8b39aabc536c441f6c4f334dbf9828168e59a8c291c5a8cd2731

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
