FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:0dba95bbfec106325c69b73fa47bb5bcbf3f0599b4e2b50a75fcd1af29486d5c

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
