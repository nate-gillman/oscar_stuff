#!/bin/bash

#SBATCH -J download_UNITER_weights
#SBATCH --array=0
#SBATCH -t 48:00:00
#SBATCH --mem=8G

#SBATCH -e outs_and_errs/download.err
#SBATCH -o outs_and_errs/download.out

bash scripts/download_vcr.sh ./STORAGE