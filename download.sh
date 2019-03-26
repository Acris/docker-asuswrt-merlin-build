#!/bin/bash

ASUSWRT_MERLIN_VERSION=384.10

cd /tmp
wget https://github.com/RMerl/asuswrt-merlin.ng/archive/${ASUSWRT_MERLIN_VERSION}.tar.gz
tar -zxf ${ASUSWRT_MERLIN_VERSION}.tar.gz
rm ${ASUSWRT_MERLIN_VERSION}.tar.gz
mv asuswrt-merlin.ng-${ASUSWRT_MERLIN_VERSION} /home/asuswrt-merlin
