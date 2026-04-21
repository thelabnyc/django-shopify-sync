FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:6db2f911d10c60552bf159f511e709d40c2a37b02166f7c7e19058f6987ab60b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
