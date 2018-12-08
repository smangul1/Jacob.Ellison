samtools=/u/home/s/serghei/project/anaconda2/bin/samtools
toolPath=/u/home/s/serghei/project/anaconda2/bin/hisat2

input=/u/home/s/serghei/scratch/algae/Jacob.Ellison/data/s-b_S3_R1_001.fastq.gz
genome=/u/home/s/serghei/scratch/algae/Jacob.Ellison/genome

hisat2 -x $genome -U $input --end-to-end --pen-noncansplice 12 --mp 1,0 --sp 3,0 --time --reorder | $samtools view -bS - >${toolName}_$(basename ${input%.*}).bam


