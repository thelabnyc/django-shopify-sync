FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:75cd1c824ad6b44766517ca11866a375c2a1983a5e1963b04ad56adc986fef69

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
