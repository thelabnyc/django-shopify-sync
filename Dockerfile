FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:a6361e17d836d4cbcf9a5ae8e28bdddc861be8d0c7389cd3b8cbc7f56805ae19

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
