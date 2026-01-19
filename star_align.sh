#!/bin/bash

#SBATCH --job-na=STAR
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH --time=12:00:00
#SBATCH --output=/lisc/data/scratch/course/2025w300106/mayer/logs/STAR_trimmed.%j.log
#SBATCH --error=/lisc/data/scratch/course/2025w300106/mayer/logs/STAR_trimmed.%j.err
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lotte.mayer99@gmail.com

###ENVIRONMENT
module load STAR
module list

###EXECUTION
STAR --runThreadN 16 --genomeDir /lisc/data/scratch/course/2025w300106/mayer/jaNemVect_STAR --readFilesIn /lisc/data/scratch/course/2025w300106/mayer/results/trimmomatic/SRR23260644__1P /lisc/data/scratch/course/2025w300106/mayer/results/trimmomatic/SRR23260644__2P --outFileNamePrefix /lisc/data/scratch/course/2025w300106/mayer/results/map/SRR23260644_trimmed_jaNemVect --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate
 
