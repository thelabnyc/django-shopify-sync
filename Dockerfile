FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:1ec621a105849222b1eaa6f3d90d5bbb16fefdbb90befb77350a4424c164ca4c

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
