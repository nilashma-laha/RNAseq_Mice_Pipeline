#!/bin/bash

# Step 5: Gene-level quantification using featureCounts
# Organism: Mus musculus
# Strand-specific counting enabled

# Path to annotation file (GTF)
GTF=/path/to/genomic.gtf

# Path to aligned BAM files
BAM_FILES=/path/to/aligned_bam_files/*.bam

# Output file
OUTPUT=gene_counts.txt

# Run featureCounts
featureCounts \
-S 2 \
-a $GTF \
-o $OUTPUT \
$BAM_FILES
