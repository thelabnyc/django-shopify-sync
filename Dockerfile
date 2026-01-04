FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:8d4a409ba07ec0c890c0f96826329446ca6652e5bffb7ea1b8f92982c9946b7f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
