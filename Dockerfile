FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:54be1e7e9b821c97f752c63f7aaad81c463df63aaa3377943b211a881a78bf6e

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
