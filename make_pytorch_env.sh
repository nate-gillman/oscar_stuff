#!/bin/bash

# This script makes a conda environment, with name provided by command line, that
# works with GPU acceleration on Oscar. 
# 
# To create an environment named pytorch_env, with version 3.6.13, you'd execute:
#
# sh make_pytorch_env.sh pytorch_env 3.6.13

# Read in command line arguments
env_name=$1
python_version=$2

# Load anaconda module
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh

# Create virtual environment
conda create -n $env_name python=$python_version

# Activate virtual environment
conda activate /users/ngillman/.conda/envs/$env_name

# Install the PyTorch that works on GPUs
conda install pytorch torchvision cudatoolkit -c pytorch

# Install other basics that are needed to run pytorch
conda install numpy

# To verify that this worked, enter python shell from terminal in GPU interactive mode...
#
# interact -q gpu -g 1 -t 04:00:00
# python
# >>> import torch
# >>> torch.cuda.is_available()
# True
