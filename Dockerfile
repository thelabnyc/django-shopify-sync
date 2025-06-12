FROM registry.gitlab.com/thelabnyc/python:3.13.741@sha256:c80419f2ec5c116b0a82c59798b10e7686691a8c334e0dc0cf72d8c06b3dec5b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
