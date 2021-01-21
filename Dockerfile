FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.12

ARG BUILD_DATE
ARG VERSION

RUN \
    echo "**** install build packages ****" && \
    apk add --no-cache \
        tor

COPY root/ /