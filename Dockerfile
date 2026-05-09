FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:e77d57fcd66a0fe3a9ea39b7881add899ca5e48c87a7069414f9bf25689ffff4

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
