# Stage 1

## RELEASE_3_10 / latest
docker run -e PASSWORD=bioc -p 8787:8787 bioconductor/bioconductor_docker:RELEASE_3_10

## Devel
docker run -e PASSWORD=bioc -p 8888:8787 bioconductor/bioconductor_docker:devel

## RStudio username = 'rstudio', password = 'bio'

## Let's stop both these containers
docker ps

## Stop (let's ask politely for the process to stop, go through the
## shut down process)
docker stop

## Kill it (Not so polite, interrupt the and kill)
docker kill
