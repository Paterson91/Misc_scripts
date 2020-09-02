#!/bin/bash

parallel --gnu gunzip -v ::: *gz

for i in `find . -name "*R?.fastq" ! -name "*sorted*"| sed 's/.fastq//'`
	do
		echo ""
		echo ">>>>>>>>>>>>>>>>>>>> $i Sort begun <<<<<<<<<<<<<<<<<<<<"
		echo ""
    		cat $i\.fastq | paste - - - - | sort -k1,1 -t " " | tr "\t" "\n" > $i\_sorted.fastq
    		echo ""
    		echo ">>>>>>>>>>>>>>>>>>>> $i Sort complete <<<<<<<<<<<<<<<<<<<<"
    		echo ""
	done

pigz -v *_sorted.fastq
