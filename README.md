# docker-asuswrt-merlin-build
Asuswrt-Merlin New Gen build environment in the docker.


# Quick Start
- Start a docker container:
```bash
docker run -dt --name asuswrt-merlin-build acrisliu/asuswrt-merlin-build
docker exec -it asuswrt-merlin-build bash
```

- Set environment variable for build:
```bash
# For Broadcom SDK6/SDK7 ARM platform (RT-AC56 upto RT-AC5300)
. /root/env/bcm-sdk.sh
# For Broadcom HND ARM platform (RT-AC86U)
#. /root/env/bcm-hnd.sh
# For Broadcom HND AX ARM (RT-AX88U)
#. /root/env/bcm-hnd-802.11ax.sh
```

Then, you can compile your programs, don't forget mount your source code to container.

# Samples
https://gist.github.com/Acris/60abe3f1a17567a7986000745fbe2742
