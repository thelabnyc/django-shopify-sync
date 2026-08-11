FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:53a188bbf1876be398f0c0b7e44e85eba0aaddaf991c0e1be9b866a195e408df

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
