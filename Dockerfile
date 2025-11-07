FROM registry.gitlab.com/thelabnyc/python:3.13.1070@sha256:5a32df777d3dd2b48b48200125785aaf7a96e47a1a040cb4625237f40beb6697

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
