#!/bin/bash
start='date *%s'

STAR --runThreadN 100 \
--runMode genomeGenerate \
--genomeDir /home/ap14958/STAR_Indexes/Homo_sapiens_GRCh38 \
--genomeFastaFiles /home/ap14958/FASTA/Homo_sapiens/H_sapiens_GRCh38.fa \
--sjdbGTFfile /home/ap14958/GTF/Homo_sapiens/Homo_sapiens.GRCh38.98.gtf \
--sjdbOverhang 74 \
--limitGenomeGenerateRAM=500000000000

end='date +%s'
runtime=$((end-start))
command; echo "Total Runtime = $runtime" | mail -s "Indexing Complete" a.paterson@bristol.ac.uk

