blastn -db .fna \
-query $i\.fa \
-out $i\_Results.out \
-evalue 0.0005 \
-dust yes \
-word_size 20 \
-outfmt "6 sseqid sseq sstart send sstrand"
