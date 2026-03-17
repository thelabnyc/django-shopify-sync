FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:f8ea2f563e8ea239e312a24794deaef769c4ee649ef511166cbe18ed95e26b5b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
