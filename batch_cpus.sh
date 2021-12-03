#!/bin/bash

# A batch script for running 10 jobs on parallel CPU nodes on Oscar, using the Slurm scheduler.

#SBATCH -J <job_name>
#SBATCH --array=0-9
#SBATCH -t 24:00:00
#SBATCH --mem=7G

#SBATCH -e experiment_output/experiment%a.err
#SBATCH -o experiment_output/experiment%a.out

# Load anaconda module
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh

# Activate virtual environment
conda activate /users/ngillman/.conda/envs/<env_name>

# Run the script, passing the job id's 0, 1, ..., 9 as variables
python <script_name>.py $SLURM_ARRAY_TASK_ID