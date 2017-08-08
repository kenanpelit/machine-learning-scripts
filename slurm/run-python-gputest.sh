#!/bin/bash
#SBATCH -N 1 -p gputest --gres=gpu:1 -t 15 --mem=2G

module list

set -xv

date
hostname
nvidia-smi

srun python3.4 $*

date
