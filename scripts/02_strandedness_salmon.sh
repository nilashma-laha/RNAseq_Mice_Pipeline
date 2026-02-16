#!/bin/bash

# Library strandedness inference using Salmon
# Organism: Mus musculus
# Paired-end RNA-seq

salmon quant \
-i <mouse_cds_index> \
-l A \
-1 <sample_R1.fastq.gz> \
-2 <sample_R2.fastq.gz> \
-o <output_directory> \
--validateMappings
