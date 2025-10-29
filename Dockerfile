FROM registry.gitlab.com/thelabnyc/python:3.13.1043@sha256:478b19f1d72e04acc8f3eb2a37bd8cf40281b6e0d567e3bea0ae8c5f0e2add0b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
