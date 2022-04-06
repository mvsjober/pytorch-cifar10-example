#!/bin/bash
#SBATCH --account=project_2001234
#SBATCH --partition=gputest
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=32G
#SBATCH --time=15
#SBATCH --gres=gpu:v100:1

module purge
module load pytorch

srun python3 cifar10_cnn.py --data_path=/scratch/project_2001234/cifar-10-batches-py
