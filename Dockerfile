FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:e95e7f0741c6eff85d9ab732bca05a5ef601e5165b7e6bbae3d78fa4111292bc

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
