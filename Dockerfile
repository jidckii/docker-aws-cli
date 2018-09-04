FROM alpine:3.8 AS base

LABEL maintainer="Eugene Medvedev jidckii@gmail.com"

ENV AWSCLI_VERSION "1.16.6"
# Install requirements
RUN apk add --update --no-cache \
    python \
    py-pip \
    bash \
    jq \
    # Install awscli
    && pip install --upgrade awscli==${AWSCLI_VERSION}

WORKDIR /awscli
