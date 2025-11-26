FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:e6d2ccff90549ad4f5d5f654907dc085d5cffc558fd1c8e92678e44382c696c0

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
