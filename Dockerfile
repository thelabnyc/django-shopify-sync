FROM registry.gitlab.com/thelabnyc/python:3.13.987@sha256:6e7276ae6ac4a9c96de7bdab271e879ddc427d544b4f40172ec8fdb951f8151a

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
