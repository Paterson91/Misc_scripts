for NAME in `ls *bam | sed 's/Aligned.sortedByCoord.out.bam//'`;
	do
		echo "Sorting $NAME\Aligned.sortedByCoord.out.bam to $NAME\_sorted.bam"
		samtools sort $NAME\Aligned.sortedByCoord.out.bam -o $NAME\_sorted.bam
		echo "Sort complete"
		echo "Indexing $NAME\_sorted.bam"
		samtools index $NAME\_sorted.bam
		echo "Indexing complete"
	done
