FROM registry.gitlab.com/thelabnyc/python:3.13.820@sha256:c627949df95f50199db8ca6a44ab299970eaf30be6ddba2720936a4f6b923049

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
