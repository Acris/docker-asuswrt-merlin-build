#!/bin/bash

ASUSWRT_MERLIN_VERSION=384.12

if [[ ! -d /home/asuswrt-merlin ]]; then
  cd /tmp
  wget https://github.com/RMerl/asuswrt-merlin.ng/archive/${ASUSWRT_MERLIN_VERSION}.tar.gz
  tar -zxf ${ASUSWRT_MERLIN_VERSION}.tar.gz
  rm ${ASUSWRT_MERLIN_VERSION}.tar.gz
  mv asuswrt-merlin.ng-${ASUSWRT_MERLIN_VERSION} /home/asuswrt-merlin
fi