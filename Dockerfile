FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:1c2dce98d4f424414f0d80ba890060a609d6487b5806717539407bdd817ff3c4

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
