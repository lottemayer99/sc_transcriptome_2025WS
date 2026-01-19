#!/bin/bash

#SBATCH --job-name=trimmomatic
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=4:00:00
#SBATCH --output=/lisc/data/scratch/course/2025w300106/mayer/logs/trimmomatic.%j.log
#SBATCH --error=/lisc/data/scratch/course/2025w300106/mayer/logs/trimmomatic.%j.err
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lotte.mayer99@gmail.com

##ENVIRONMENT
module load Trimmomatic
module list

##VARIABLES
genDir="/lisc/data/scratch/course/2025w300106/mayer"
outDir="$genDir/results/trimmomatic"

##EXECUTION
echo "started at $(date)"
mkdir -p $outDir
trimmomatic PE -threads 4 -summary $outDir/SRR23260644_summary.txt $genDir/SRR23260644_1.fastq $genDir/SRR23260644_2.fastq -baseout $outDir/SRR23260644_ ILLUMINACLIP:$genDir/trim_adapters.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:31
echo "finished at $(date)"
