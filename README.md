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
# For Broadcom ARM platform
/root/env/init.sh
# For Broadcom AX ARM (RT-AX88U)
#/root/env/init-802.11ax.sh
```

Then, you can compile your programs, don't forget mount your source code to container.
