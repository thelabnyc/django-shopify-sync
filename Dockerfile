FROM registry.gitlab.com/thelabnyc/python:py313@sha256:06acdbcbdbcab477a36d268b35fecaa79d1632422bb4547058610531248ce76a

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
