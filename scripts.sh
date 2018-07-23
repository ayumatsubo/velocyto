#!/usr/bin/env bash
docker run --rm -v $1:/home/user/gtf -v $2:/home/user/bam vpetukhov/dropest \
dropest -V -f -g /home/user/gtf/genes.gtf -c /home/user/dropEst/configs/10x.xml /home/user/bam/$3
###### gtfはURLを添付, bam fileは解析したいもの ########

docker run -it --rm -p 7788:8888 --name velocyto_tsubosaka -v ./:/home/rstudio/data --user root velocyto_dk
