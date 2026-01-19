#!/bin/bash

#SBATCH --job-name=FastQC
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=2G
#SBATCH --time=1:00:00
#SBATCH --output=/lisc/data/scratch/course/2025w300106/mayer/logs/fastqc.%j.log
#SBATCH --error=/lisc/data/scratch/course/2025w300106/mayer/logs/fastqc.%j.err
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lotte.mayer99@gmail.com

module load FastQC

outDir_fastqc="/lisc/data/scratch/course/2025w300106/mayer/results/fastqc"
baseDir="/lisc/data/scratch/course/2025w300106/mayer/"

echo "Started job at $(date)"
mkdir $outDir_fastqc
fastqc -o $outDir_fastqc -t 2 $baseDir/SRR23260644_1.fastq $baseDir/SRR23260644_2.fastq
echo "Job finished at $(date)"
