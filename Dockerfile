FROM registry.gitlab.com/thelabnyc/python:3.15@sha256:c83a8404b09fd7c6313a8c8296442dcae8b89403f9d39d8f8b242103c000f65c

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
