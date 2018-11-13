#SRR1916152
#SRR1916153
#SRR1916154
#SRR1916155
#SRR1916156

#  read sra accession number file
#生成wget命令

import sys
acc_file=sys.argv[1]
with open(acc_file) as acc_file_handle:
    for line in acc_file_handle:
        line=line.rstrip()
        cmd_str="wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/{srr_six}/{srr_acc}/{sra_file}".format(srr_six=line[0:6], srr_acc=line, sra_file=line+".sra")
        print(cmd_str)


