FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:fc5e08ad337dd89402b10efce607f942646734d1f2cd559c3a97e4a52b289007

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
