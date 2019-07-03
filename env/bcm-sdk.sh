#!/bin/bash

ASUSWRT_MERLIN_VERSION=384.12

if [[ ! -d /home/asuswrt-merlin ]]; then
  cd /tmp
  wget https://github.com/RMerl/asuswrt-merlin.ng/archive/${ASUSWRT_MERLIN_VERSION}.tar.gz
  tar -zxf ${ASUSWRT_MERLIN_VERSION}.tar.gz
  rm ${ASUSWRT_MERLIN_VERSION}.tar.gz
  mv asuswrt-merlin.ng-${ASUSWRT_MERLIN_VERSION} /home/asuswrt-merlin
fi

ln -sf /root/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/brcm-arm
ln -sf /root/am-toolchains/brcm-arm-sdk /home/asuswrt-merlin/release/src-rt-6.x.4708/toolchains

export LD_LIBRARY_PATH=$LD_LIBRARY:/opt/brcm-arm/lib
export PATH=$PATH:/opt/brcm-arm/bin
