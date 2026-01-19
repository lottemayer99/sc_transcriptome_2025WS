#tested strandedness and found unstranded to give the best result

featureCounts -a /lisc/data/scratch/course/2025w300106/mayer/results/map/filtered_gene_models.gtf -o featureCount_output_filtered.tsb /lisc/data/scratch/course/2025w300106/mayer/results/map/filtered.bam -p --countReadPairs -T 4
 
