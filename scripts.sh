#!/usr/bin/env bash
docker run --rm dropest \
dropest -V -f -g [refdata-cellranger-mm10-1.2.0/genes/genes.gtf] -c /home/user/dropEst/configs/10x.xml [neurons_900_possorted_genome_bam.bam]
###### gtfはURLを添付

docker run -it --rm -p 7788:8888 --name velocyto_tsubosaka -v ./:/home/rstudio/data --user root velocyto_dk
