FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:05dd808f5d674b15a9734645f5f1f1ed8f1eec89be5f51bae1a889cfb7b1bd18

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
