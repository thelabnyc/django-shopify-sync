FROM registry.gitlab.com/thelabnyc/python:3.13.974@sha256:a8e3c5425a167355846e94b7b32947b2795681f609f49a4d0c6ef326333045e1

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
