# docker-asuswrt-merlin-build
Asuswrt-Merlin New Gen build environment in the docker.


# Quick Start
- Start a docker container:
```bash
docker run -dt --name asuswrt-merlin-build acrisliu/asuswrt-merlin-build
docker exec -it asuswrt-merlin-build bash
```

- Download asuswrt-merlin.ng source code:
```bash
/root/download.sh
```
The source code will be place to `/home/asuswrt-merlin`.

- Set environment variable for build:
```bash
# For Broadcom HND ARM platform (RT-AC86U)
/root/env/bcm-hnd.sh
# For Broadcom HND AX ARM (RT-AX88U)
/root/env/bcm-hnd-802.11ax.sh
# For Broadcom SDK6/SDK7 ARM platform (RT-AC56 upto RT-AC5300)
/root/env/bcm-sdk.sh
```

Then, you can compile your programs, don't forget mount your source code to container.
