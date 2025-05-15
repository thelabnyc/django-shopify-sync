FROM registry.gitlab.com/thelabnyc/python:3.13.676@sha256:f6f734c00fce8b38ad0e5d43333104f15faec05a79638de1ec7f63aaafedd3e2

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
