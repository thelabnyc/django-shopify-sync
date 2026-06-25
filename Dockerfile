FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:f28aed17a3bb2ecb996fa33198251748db5385093d74a99fa2a889c2b8f7c9e6

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
