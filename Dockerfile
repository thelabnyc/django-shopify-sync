FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:c63eea6a970e5e36dec447435f3ba010db753e90eed65feec23b00e4f00caec8

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
