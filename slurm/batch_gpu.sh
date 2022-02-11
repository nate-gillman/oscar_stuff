#!/bin/bash

# A batch script for running a job on Oscar's 3090 condo, using the Slurm scheduler
# The 3090 condo runs NVIDIA's GeForce RTX 3090 graphics card

#SBATCH -p 3090-gcondo --gres=gpu:1
#SBATCH -N 1 # gives one node, makes sure cpu cores are on same node
#SBATCH -n 4 # requests four CPU cores
#SBATCH --mem=63G
#SBATCH -t 48:00:00
#SBATCH -J <name_of_job>
#SBATCH -e <name_of_job>.err
#SBATCH -o <name_of_job>.out

# Move to correct working directory
cd /gpfs/data/working/path/here

# Load anaconda module, and other modules
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh
module load gcc/10.2 cuda/11.1.1 ffmpeg/4.0.1

# Activate virtual environment
conda activate /gpfs/home/ngillman/anaconda/<env_name>

# Run the script
python <script_name>.py