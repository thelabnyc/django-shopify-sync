FROM registry.gitlab.com/thelabnyc/python:3.13.812@sha256:7cb6fd74c3a16a6bb05e60fd3c1936baa4e3da9d54898fae20ebdd860c41de91

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
