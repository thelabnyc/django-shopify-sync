FROM registry.gitlab.com/thelabnyc/python:3.13.678@sha256:8b330520901706e453726582eb600ccf1e977268be1c6122456c1db06313c1ee

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
