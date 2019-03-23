#!/bin/bash
cd /root
git clone https://github.com/RMerl/am-toolchains.git
mkdir /opt
ln -s /root/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/brcm-arm
ln -s /root/am-toolchains/brcm-arm-sdk /home/asuswrt-merlin/release/src-rt-6.x.4708/toolchains
export PATH=$PATH:/opt/brcm-arm/bin
