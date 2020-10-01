FROM alpine:3.9

MAINTAINER Pavel Ivanov

RUN apk --update --no-cache add \
    python2 \
    py-pip \
    jq \
    mysql-client \
    gettext \
    && pip install --no-cache-dir awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*

ENTRYPOINT ['sh']

