FROM continuumio/miniconda

RUN conda install -c bioconda genenotebook=0.1.14

COPY ./wait-for-it/wait-for-it.sh /bin

EXPOSE 3000

CMD ["genenotebook","run"]