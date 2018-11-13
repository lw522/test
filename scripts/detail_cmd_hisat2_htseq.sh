hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U SRR1916152.fastq > SRR1916152.sam 
hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U SRR1916153.fastq > SRR1916153.sam 
hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U SRR1916154.fastq > SRR1916154.sam 
hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U SRR1916155.fastq > SRR1916155.sam 
hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U SRR1916156.fastq > SRR1916156.sam 
samtools view -bS SRR1916152.sam -o SRR1916152.bam
samtools view -bS SRR1916153.sam -o SRR1916153.bam
samtools view -bS SRR1916154.sam -o SRR1916154.bam
samtools view -bS SRR1916155.sam -o SRR1916155.bam
samtools view -bS SRR1916156.sam -o SRR1916156.bam
samtools sort SRR1916152.bam -o SRR1916152.sorted.bam
samtools sort SRR1916153.bam -o SRR1916153.sorted.bam
samtools sort SRR1916154.bam -o SRR1916154.sorted.bam
samtools sort SRR1916155.bam -o SRR1916155.sorted.bam
samtools sort SRR1916156.bam -o SRR1916156.sorted.bam
htseq-count -f bam -r pos SRR1916152.bam ../ref/Saccharomyces_cerevisiae.R64-1-1.94.gtf > SRR1916152.count.tab
htseq-count -f bam -r pos SRR1916153.bam ../ref/Saccharomyces_cerevisiae.R64-1-1.94.gtf > SRR1916153.count.tab
htseq-count -f bam -r pos SRR1916154.bam ../ref/Saccharomyces_cerevisiae.R64-1-1.94.gtf > SRR1916154.count.tab
htseq-count -f bam -r pos SRR1916155.bam ../ref/Saccharomyces_cerevisiae.R64-1-1.94.gtf > SRR1916155.count.tab
htseq-count -f bam -r pos SRR1916156.bam ../ref/Saccharomyces_cerevisiae.R64-1-1.94.gtf > SRR1916156.count.tab

