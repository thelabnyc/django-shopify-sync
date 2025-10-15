FROM registry.gitlab.com/thelabnyc/python:3.13.1007@sha256:6c31c6dbf68bdb47ba54034782e6dfcab6a09688a5567a67db59918ffa64244b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
