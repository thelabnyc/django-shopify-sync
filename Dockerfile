FROM registry.gitlab.com/thelabnyc/python:3.13.996@sha256:165008c6afc5769c149ce66e2a212ef4c8a22672e0be2e0802697df2f487f1b9

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
