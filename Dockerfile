FROM registry.gitlab.com/thelabnyc/python:3.13.747@sha256:673d555237af80b3e915332a464ed7b15af47504532a1fcbce01b3ab34165fec

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
