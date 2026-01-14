FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:c2cfe032f91c6077f8046c2e0dc91f313888f5dcdc583399f966e85083935eb9

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
