# Stage 3

## Extend image

## Create a directory
mkdir my_image

######################################
## within the my_image directory, create an empty file called
## "Dockerfile". Inside "Dockerfile" enter the following,

# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

RUN pip install tensorflow

# Install required Bioconductor package
RUN R -e 'BiocManager::install("scAlign")'
##########################################

## Build docker image
docker build -t nitesh1989/scAlign:0.0.1 .


## Push image to Dockerhub
docker push nitesh1989/scAlign:0.0.1
