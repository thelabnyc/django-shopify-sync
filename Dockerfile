FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:e99779554ce289a813f14541fe6d87181fb2a9de492c64389fd7376c9abc271a

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
