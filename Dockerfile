FROM registry.gitlab.com/thelabnyc/python:py313@sha256:4faefb5e57574b839f6bab082bb878cf8c98f0e02807203e950acd1a74e51d61

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
