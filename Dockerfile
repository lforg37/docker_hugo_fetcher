FROM alpine:latest

RUN apk add --no-cache hugo openssh-client py-pygments git;\
    mkdir build scratch

COPY scripts/entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
