#!/bin/bash

# Step 3: Alignment using HISAT2
# Organism: Mus musculus
# Data type: Paired-end RNA-seq
# Strandness: Reverse stranded (--rna-strandness R)

# Path to HISAT2 index (prefix of index files)
INDEX=/path/to/refGenome_mouse_index/refGenome

# Input FASTQ files
READ1=/path/to/sample_R1.fastq.gz
READ2=/path/to/sample_R2.fastq.gz

# Output BAM file
OUTPUT_BAM=sample_sorted.bam

# Alignment and sorting
hisat2 -q \
--rna-strandness R \
-x $INDEX \
-1 $READ1 \
-2 $READ2 | samtools sort -o $OUTPUT_BAM
