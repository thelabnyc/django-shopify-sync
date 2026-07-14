FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:f0c48b89787a232cdcdab5905e2dda8372ca804d0d6cac7261ddd74aa24ddf47

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
