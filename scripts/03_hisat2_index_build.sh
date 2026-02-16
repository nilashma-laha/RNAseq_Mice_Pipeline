#!/bin/bash

# Step 0: Build HISAT2 index
# Organism: Mus musculus
# Genome assembly: GRCm39

# Path to GRCm39 reference genome FASTA
GENOME=/path/to/GRCm39.genome.fa

# Output prefix for index files
INDEX_PREFIX=GRCm39_index

# Build index
hisat2-build $GENOME $INDEX_PREFIX
