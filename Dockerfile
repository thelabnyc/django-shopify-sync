FROM registry.gitlab.com/thelabnyc/python:3.13.993@sha256:aafda646101bf2b344066b1b1569ded6f3b28d60ac72ee968d35c49853a1d061

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
