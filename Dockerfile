FROM registry.gitlab.com/thelabnyc/python:3.13.673@sha256:4115ae9c5ac00ef59426a2035a968fae25fdaef67b6f3603c0f4a6a4ed41d2f3

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
