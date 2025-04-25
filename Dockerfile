FROM registry.gitlab.com/thelabnyc/python:py313@sha256:86b73fc99733de7267fec797640e2abadd2a296783a5d37b0bd8b6163a4c9dde

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
