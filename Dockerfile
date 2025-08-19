FROM registry.gitlab.com/thelabnyc/python:3.13.915@sha256:21e471cb32033b2ccf27c4bfcbe7ccea3b2b2dd742951ecbc3e2db2792c4b378

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
