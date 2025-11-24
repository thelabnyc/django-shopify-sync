FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:8ac04dd1df828225a991ec09d5ce9a0efd5de1916017c1fb32eb8e42c80dc6d2

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
