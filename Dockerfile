FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:7d5bb832f68578fc6ae53d53dbaac23512500d1644d3a584f7ced66ecabd388d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
