FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:1b2728e2b9a813305ed954799a39ced67227db4ed3808e39f233d9c3cb9f6e24

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
