FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:3ebff7128227829df9137429094aa25797479af9ffc8a86b68cdb8bcbf818492

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
