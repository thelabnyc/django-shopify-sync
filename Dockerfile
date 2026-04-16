FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:5e7e077145f451d6b8db8522b8b912ee318e2d074c6f64b8dce9248928517f00

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
