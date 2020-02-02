# Stage 3

Extend image

1. mkdir scAlign

2. emacs Dockerfile


# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

# Update apt-get
RUN apt-get update \ ## Check if APT update is needed
	## Install the python package tensorflow
	&& pip install tensorflow		\
        ## remove
	&& rm -rf /var/lib/apt/lists/*

# Install required Bioconductor package
RUN R -e 'BiocManager::install("scAlign")'


3. `Docker build -t nitesh1989/scAlign:0.0.1 .`

4. docker push nitesh1989/scAlign:0.0.1
