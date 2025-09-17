FROM registry.gitlab.com/thelabnyc/python:3.13.961@sha256:2c96555191b14909c223e9767ae4f8bb420b3aab0c9452408279947340089c34

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
