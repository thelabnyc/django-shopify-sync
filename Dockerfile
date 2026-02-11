FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:2b16f6f5435bc0a80fda3fbf0a342bbad7ea52657a995eacdcf6726b21efc564

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
