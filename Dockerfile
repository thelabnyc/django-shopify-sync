FROM registry.gitlab.com/thelabnyc/python:3.13.1025@sha256:186c3267b006a8f0213c5be34def14c66afaf2e3fa847b2ce93cda3e0ef800ec

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
