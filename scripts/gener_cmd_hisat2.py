#!/usr/bin/python
import sys
acc_file=sys.argv[1]
with open(acc_file) as acc_file_handle:
    for line in acc_file_handle:
        line=line.rstrip()
        cmd_str="hisat2 -x ../ref/yeast_hisat2_index/yeast_hisat2_index -U {sra_file}.fastq |samtools view -bS - | samtools sort -o {sra_file}.sort.bam".format(sra_file=line)
        print(cmd_str)


