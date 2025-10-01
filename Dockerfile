FROM registry.gitlab.com/thelabnyc/python:3.13.976@sha256:e711760153fc703393252416a825842f9e03f7077e48e3bcbbe23aaedb00d515

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
