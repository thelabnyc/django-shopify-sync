FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:1be853e6f27965f57ba0fc6bdc2651ecbc3bcb02becc38b983b6af363cbc39ed

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
