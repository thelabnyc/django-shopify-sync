FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:049a47032e5f01095aa0adf05b3f98fde454c1420685c816c3f4fd7ca832c1a6

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
