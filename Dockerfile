FROM registry.gitlab.com/thelabnyc/python:3.13.802@sha256:4935c12b7d90a053d820d16b8376f4ee10ba5a934f25343fe747dfd137a8f3f5

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
