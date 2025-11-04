FROM registry.gitlab.com/thelabnyc/python:3.13.1055@sha256:e9b63319224ededb4cdaccd1a73c5cdd74a2add9b47dfb0d72419a11499d28a0

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
