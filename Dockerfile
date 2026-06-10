FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:7f1db4fb98fbf83156b8c586f9fe7879bceee4e210e353d34c67fd984d86910f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
