FROM registry.gitlab.com/thelabnyc/python:3.13.770@sha256:148b6fb07eb02bca3ffe2d658be4760fbd1f0c4d5955ea3f6e775f4d0c1e0426

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
