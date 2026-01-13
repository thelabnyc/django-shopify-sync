FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:86e8a4334000efd84cb1bbb4a47dab374dd1f9d2d4011f86faea59da6aee54e6

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
