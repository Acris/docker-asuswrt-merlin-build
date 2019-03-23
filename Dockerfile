FROM debian:jessie

LABEL maintainer="acrisliu@gmail.com"

COPY build.sh /root/build.sh

RUN set -ex \
    && dpkg --add-architecture i386 \
    && apt update \
    && apt install --no-install-recommends -y \
       autoconf automake bash bison bzip2 diffutils file flex g++ gawk gcc-multilib gettext \
       gperf groff-base libncurses-dev libexpat1-dev libslang2 libssl-dev libtool git \
       libxml-parser-perl make patch perl pkg-config python sed shtool texinfo unzip \
       zlib1g zlib1g-dev lib32z1-dev lib32stdc++6 automake1.11 libelf-dev:i386 libelf1:i386 \
    && apt autoremove -y \
    && apt autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /root/build.sh

CMD ["bash"]
