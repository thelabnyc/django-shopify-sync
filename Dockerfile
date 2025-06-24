FROM registry.gitlab.com/thelabnyc/python:3.13.763@sha256:c8fb927482806c90d82e48c4c3f8188803549b0f676f9d64fb1342604e7c4a66

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction
