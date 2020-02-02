# Stage 2 - Improved commands

## Devel
docker run -e PASSWORD=bioc \
       -v /shared/devel/library:/usr/local/lib/R/host-site-library \
       -p 8888:8787 bioconductor/bioconductor_docker:devel

## Install packagse

BiocManager::install("BiocParallel")

.libPaths()

## Let's stop both these containers
docker ps

## Stop (let's ask politely for the process to stop, go through the
## shut down process)
docker stop

## Start it up again

docker run -e PASSWORD=bioc \
       -v /shared/devel/library:/usr/local/lib/R/host-site-library \
       -p 8888:8787 bioconductor/bioconductor_docker:devel


library(BiocParallel)

