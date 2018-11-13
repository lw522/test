hisat2 -x ../ref/yeast_hisat2_index/ -U ../data/SRR1916152.fastq |samtools view -bS - | samtools sort -o EV_3.sort.bam
hisat2 -x ../ref/yeast_hisat2_index/ -U ../data/SRR1916153.fastq |samtools view -bS - | samtools sort -o EV_4.sort.bam
hisat2 -x ../ref/yeast_hisat2_index/ -U ../data/SRR1916154.fastq |samtools view -bS - | samtools sort -o DNMT3B_2.sort.bam
hisat2 -x ../ref/yeast_hisat2_index/ -U ../data/SRR1916155.fastq |samtools view -bS - | samtools sort -o DNMT3B_3.sort.bam
hisat2 -x ../ref/yeast_hisat2_index/ -U ../data/SRR1916156.fastq |samtools view -bS - | samtools sort -o DNMT3B_4.sort.bam
