FROM registry.gitlab.com/thelabnyc/python:3.13.898@sha256:d4e85348498aa158051a6d59169a8ec86fc7caef972b5ef9eca0aaa0c608304f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
