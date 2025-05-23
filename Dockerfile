FROM registry.gitlab.com/thelabnyc/python:3.13.700@sha256:d3c029efb4fb71648a3788404f60c7fa82cc22caf9d024f5de6d15be502ef67f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
