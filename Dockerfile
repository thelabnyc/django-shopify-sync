FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:83f0c88e156924c0f79d34359d0dc6388780b55d8b21d5dc75165fc6128d49cf

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
