#!/bin/bash


#for name in ./*.fq.gz; do
#    rnum=${name##*_}
#    rnum=${rnum%%.*}
#
#    sample=${name#*_}
#   sample=${sample%%_*}

#    cat "$name" >>"${sample}_$rnum.fastq.gz"
#done


find . -name "*001.fastq.gz" ! -name "*Undetermined*" -exec sh -c '
	for file do
		rnum=${file##*_R}
		rnum=${rnum%%_*}
		sample=${file%%_S*}
		echo $rnum
		echo $sample
		echo $file
		echo "${sample}_R$rnum.fastq.gz"
    		cat "$file" >> "${sample}_R$rnum.fastq.gz"
	done' sh {} +
