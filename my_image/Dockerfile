FROM bioconductor/bioconductor_docker:latest

RUN pip install tensorflow

RUN R -e "BiocManager::install('scAlign')"
