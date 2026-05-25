FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:ffec4a4346c29efb891073411492115f111f13fe49acbec20a7f15e7947713d3

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
