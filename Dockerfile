FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:6fda815489e617325dd05d760e511937dbc8521b86c14c59b3e781f9d12d9ee2

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
