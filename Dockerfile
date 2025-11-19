FROM registry.gitlab.com/thelabnyc/python:3.13.1120@sha256:3a021ce0e99a4ee83cab71f439d5d02bf5d85b2aa819a4fe47cbd8a91340fb28

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync
