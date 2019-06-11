FROM debian:stretch-slim

LABEL maintainer="Acris Liu <acrisliu@gmail.com>"

ADD env /root/env

RUN set -ex \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install --no-install-recommends -y \
       wget git nano vim upx-ucl \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /root/env/*.sh \
    && cd /root \
    && git clone https://github.com/RMerl/am-toolchains.git

CMD ["bash"]
