FROM registry.gitlab.com/thelabnyc/python:3.15@sha256:489ff9c9e067787afcea3b4e2b344e2e8c507109a8362132bf28d6c442c5495c

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
