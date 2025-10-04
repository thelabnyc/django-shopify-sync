FROM registry.gitlab.com/thelabnyc/python:3.13.989@sha256:b97d0877084de3375e06f5d71617535ded77f455bb22751295ba7ea6a47aeac3

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
