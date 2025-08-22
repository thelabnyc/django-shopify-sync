FROM registry.gitlab.com/thelabnyc/python:3.13.921@sha256:7f3104ff00cfa4864ce74f93fb9a2d9ffaf4ab1ff995e9d9957375e36b80517d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
