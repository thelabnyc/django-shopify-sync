FROM registry.gitlab.com/thelabnyc/python:3.13.818@sha256:0bd16d1664b57437e8db24b1aaa127dd09f22d00d330ee5fe236d2f36ecf40f8

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
