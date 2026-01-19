#!/bin/bash

#SBATCH --job-name=emapper
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32G
#SBATCH --time=4:00:00
#SBATCH --output=/lisc/data/scratch/course/2025w300106/mayer/logs/emapper.%j.log
#SBATCH --error=/lisc/data/scratch/course/2025w300106/mayer/logs/emapper.%j.err
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lotte.mayer99@gmail.com

##ENVIRONMENT
module load eggnogmapper

out_dir=/lisc/data/scratch/course/2025w300106/mayer/results/eggnog
mkdir -p ${out_dir}

#since it is the first trial I am not changing any of the default setting 
#go_evidence experimental tells it to only use what is inferred by experimental data

emapper.py --cpu 16 -i /lisc/data/scratch/course/2025w300106/mayer/proteins_X.fasta -o emapper_ --output_dir ${out_dir} --evalue 1e-5 --go_evidence experimental
