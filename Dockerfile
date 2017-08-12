FROM alpine:latest

RUN apk add --no-cache hugo py-pygments git;\
    mkdir build scratch

COPY scripts/entry.sh entry.sh

ENTRYPOINT entry.sh
