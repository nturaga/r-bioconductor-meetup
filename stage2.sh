# Stage 2 - Improved commands

## Run
## -p, Publish a container's port(s) to the host
docker run \
       -e PASSWORD=bioc \
       -v /Users/ni41435_lca/r-bioconductor-meetup/release:/usr/local/lib/R/host-site-library \
       -p 8787:8787 bioconductor/bioconductor_docker:latest

## Install packagse
BiocManager::install("Biobase")

## Show libPaths
.libPaths()

## Let's stop both these containers
docker ps

## Stop (let's ask politely for the process to stop, go through the
## shut down process)
docker stop

## Start it up again to show packages available
## -v Bind mount a volume
docker run -e PASSWORD=bioc \
       -v /Users/ni41435_lca/r-bioconductor-meetup/release:/usr/local/lib/R/host-site-library \
       -p 8787:8787 bioconductor/bioconductor_docker:latest

## show packages
rownames(installed.packages(.libPaths()[1]))

## show library load
library(Biobase)

################
## Add data and libraries

docker run -e PASSWORD=bioc \
       -v ~/Documents/:/home/rstudio \
       -v /Users/ni41435_lca/r-bioconductor-meetup/release:/usr/local/lib/R/host-site-library \
       -p 8787:8787 bioconductor/bioconductor_docker:latest


## Run containers interactively (-i interactive -t allocate a
## psedu-shell)
docker run -it bioconductor/bioconductor_docker:latest bash

docker run -it bioconductor/bioconductor_docker:latest R

## Connect to a running container,
## exec, runs a command in a running container
docker ps

docker exec -it <CONTAINER_ID> bash ## show tensorflow install

## DISABLE_AUTH

docker run \
       -e DISABLE_AUTH=true \
       -p 8787:8787  \
       bioconductor/bioconductor_docker:latest

## Run as ROOT, rstudio user gets root privileges

docker run \
       -e ROOT=true \
       -e DISABLE_AUTH=true \
       -p 8787:8787  \
       bioconductor/bioconductor_docker:latest
