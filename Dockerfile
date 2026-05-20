FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:882fdbdd3085b09adc7f0d9d73de2a172992d680982b05839eaf36ee9d7b4948

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
