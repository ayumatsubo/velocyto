# 10X genomes velocyto.R
RNA velocity estimation for 10X single cell RNA sequence data in R

# System requirements

# 使い方
bam file, gtf fileを用意する。
dropestのdockerを利用して
'''
dropest -V -f -g refdata-cellranger-mm10-1.2.0/genes/genes.gtf -c 10x.xml neurons_900_possorted_genome_bam.bam
'''
を実行する。
cell.counts.matrices.rdsを用いてvelocyto.Rに利用する。
