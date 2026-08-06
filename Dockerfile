FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:45354efc7387d75964e168b7809b081b355b6f77748d36afa97e7cb6ed0e5735

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
