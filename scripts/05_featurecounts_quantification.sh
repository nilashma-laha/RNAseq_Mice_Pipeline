#!/bin/bash

# Step 5: Gene-level quantification using featureCounts
# Organism: Mus musculus
# Supports multiple library strandedness types

# ==============================
# USER INPUT SECTION
# ==============================

# Set strandedness:
# 0 = unstranded
# 1 = forward stranded (ISF)
# 2 = reverse stranded (ISR)
STRAND=2

# Path to annotation file (GTF)
GTF=/path/to/genomic.gtf

# Path to aligned BAM files
BAM_FILES=/path/to/aligned_bam_files/*.bam

# Output file
OUTPUT=gene_counts.txt

# ==============================
# Run featureCounts
# ==============================

featureCounts \
-S $STRAND \
-a $GTF \
-o $OUTPUT \
$BAM_FILES
