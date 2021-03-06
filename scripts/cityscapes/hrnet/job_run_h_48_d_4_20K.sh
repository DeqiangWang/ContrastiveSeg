#!/bin/bash
#SBATCH -n 40
#SBATCH --output=log/%j-hrnet-cs-openseg.out
#SBATCH --gres=gpu:v100:4
#SBATCH --time=48:00:00

source /home/jc3/miniconda2/etc/profile.d/conda.sh
conda activate pytorch-0.4.1

module load gcc
module load cuda

sh run_h_48_d_4_20K.sh train 'hrnet_20K'
