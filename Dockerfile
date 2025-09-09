FROM registry.gitlab.com/thelabnyc/python:3.13.940@sha256:59d1e4c2f8ac5970ca7ff371fe558443184f8b5cbb256c742f861ab89be740a9

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
