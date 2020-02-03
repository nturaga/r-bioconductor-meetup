# Stage 3

Extend image

1. mkdir scAlign

2. emacs Dockerfile

######################################
## Dockerfile

# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

RUN pip install tensorflow

# Install required Bioconductor package
RUN R -e 'BiocManager::install("scAlign")'

#####################################

3. docker build -t nitesh1989/scAlign:0.0.1 .

4. docker push nitesh1989/scAlign:0.0.1
