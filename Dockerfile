FROM kudoshunsuke/docker-ubuntu-system-container:16.04
MAINTAINER KUDO Shunsuke

# ARG PROXY=
ARG http_proxy=$PROXY
ARG https_proxy=$PROXY
ARG HTTP_PROXY=$PROXY
ARG HTTPS_PROXY=$PROXY

RUN apt update && DEBIAN_FRONTEND=nointeractive apt install -y \
        lxqt \
        && rm -rf /var/lib/apt/lists/*

