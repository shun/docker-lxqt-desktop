FROM kudoshunsuke/docker-ubuntu-system-container:16.04
MAINTAINER KUDO Shunsuke

ARG DEBIAN_FRONTEND=nointeractive

RUN apt update
RUN add-apt-repository ppa:webupd8team/terminix \
    && apt update \
    && apt install -y \
        firefox \
        fonts-noto-* \
        fonts-takao-* \
        gnome-terminal \
        terminix \
        xfce4 \
    && rm -rf /var/lib/apt/lists/*

ARG DEFAULT_LANG="en_US.UTF-8"
#ARG DEFAULT_LANG="ja_JP.UTF-8"
RUN echo "$DEFAULT_LANG UTF-8" > /etc/locale.gen && \
    locale-gen $DEFAULT_LANG && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=$DEFAULT_LANG

ENV LC_ALL $DEFAULT_LANG

