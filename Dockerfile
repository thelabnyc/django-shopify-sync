FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:16b40eba79a434205439cd230ad5910508ef226f2c8f935caf5440563e35a0d1

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
