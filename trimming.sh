############################################################################
############################### Trim Script ################################

for i in `ls *R1_sorted.fastq.gz | sed 's/_R1_sorted.fastq.gz//'`
	do
		echo ""
		echo ">>>>>>>>>>>>>>>>>>>> $i Trimming begun <<<<<<<<<<<<<<<<<<<<<<"
		echo ""
		/usr/bin/bbmap/bbduk.sh \
		in1=$i\_R1_sorted.fastq.gz \
		in2=$i\_R2_sorted.fastq.gz \
		out1=$i\_R1_trim.fastq.gz \
		out2=$i\_R2_trim.fastq.gz \
		ref=/usr/bin/bbmap/resources/adapters.fa \
		tpe tbo
		echo ">>>>>>>>>>>>>>>>>>> $i Trimming Complete <<<<<<<<<<<<<<<<<<<<"
		echo ""
	done
