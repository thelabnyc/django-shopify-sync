FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:d5f5e272767535d07a13c8a817760e0c42f72e61df42c8378fddb89eedaccebc

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
