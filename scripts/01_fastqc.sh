#!/bin/bash

# Step 1: Quality control using FastQC
# Organism: Mus musculus
# Input: Paired-end FASTQ files (.fastq.gz)

# Path to FastQC executable (if not in PATH)
FASTQC=/path/to/fastqc

# Directory containing FASTQ files
INPUT_DIR=/path/to/fastq_files/

# Output directory for FastQC reports
OUTPUT_DIR=fastqc_reports

# Create output directory if it does not exist
mkdir -p $OUTPUT_DIR

# Run FastQC on all gzipped FASTQ files
$FASTQC $INPUT_DIR/*.fastq.gz -o $OUTPUT_DIR
