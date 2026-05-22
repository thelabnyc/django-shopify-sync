FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:5d5275a8a69bbcaa3ff858d8201c199985ee6b85c8d05a1c9c58d056f2240df0

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
