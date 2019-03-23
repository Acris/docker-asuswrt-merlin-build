FROM debian:jessie

LABEL maintainer="acrisliu@gmail.com"

ADD env /root

RUN set -ex \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install --no-install-recommends -y \
       wget apt-utils autoconf automake bash bison bzip2 diffutils file flex g++ gawk gcc-multilib \
       gettext gperf groff-base libncurses-dev libexpat1-dev libslang2 libssl-dev libtool git \
       libxml-parser-perl make patch perl pkg-config python sed shtool texinfo unzip zlib1g \
       zlib1g-dev lib32z1-dev lib32stdc++6 automake1.11 libelf-dev:i386 libelf1:i386 \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /root/env/*.sh

CMD ["bash"]
