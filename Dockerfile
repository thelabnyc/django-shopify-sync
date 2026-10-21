FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:9a9f865840d4ce0ddbc177555d64cadc13b51b3d51908a502a386c24aaef18dc

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
