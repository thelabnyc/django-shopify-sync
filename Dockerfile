FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:7b47ab1745c69f9c0d3a392fe1f31bec19b8f183ca2406f364b0cfa8ca8b3130

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
