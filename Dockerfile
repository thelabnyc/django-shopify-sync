FROM registry.gitlab.com/thelabnyc/python:3.13.836@sha256:2ba7e85ccf62e5c19fb135ce758e270032e30b465856d012c55240020a3755c0

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
