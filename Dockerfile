FROM debian:stretch-slim

LABEL maintainer="Acris Liu <acrisliu@gmail.com>"

ADD env /root/env

RUN set -ex \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends autoconf automake git \
       bash bison bzip2 diffutils file flex g++ gawk gcc-multilib apt-utils \
       gettext gperf groff-base libncurses-dev libexpat1-dev libslang2 \
       libssl-dev libtool libxml-parser-perl make patch perl pkg-config python \
       sed shtool tar texinfo unzip zlib1g zlib1g-dev lib32z1-dev lib32stdc++6 \
       automake1.11 libelf-dev:i386 libelf1:i386 wget curl vim nano \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /root/env/*.sh \
    && cd /root \
    && git clone https://github.com/RMerl/am-toolchains.git

CMD ["bash"]
