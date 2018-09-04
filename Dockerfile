FROM williamyeh/ansible:alpine3-onbuild AS base

LABEL maintainer="Eugene Medvedev jidckii@gmail.com"

ENV AWSCLI_VERSION "1.16.6"
ENV ANSIBLE_VERSION "2.6.1"
# Install requirements
RUN apk add --update --no-cache \
    python \
    py-pip \
    bash \
    jq \
    # Install awscli and ansible
    && pip install --upgrade pip \
    && pip install ansible==${ANSIBLE_VERSION} \
    && pip install awscli==${AWSCLI_VERSION}

WORKDIR /awscli
