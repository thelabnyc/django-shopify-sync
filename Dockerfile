FROM registry.gitlab.com/thelabnyc/python:3.13.696@sha256:1249af72b7409f00444105358dcba7bf94a6522f0db56470be86861f1d39c4b1

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
