#!/bin/bash
#SBATCH --account=dac
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=32G
#SBATCH --time=1:00:00
#SBATCH --gres=gpu:v100:1

module load pytorch/1.11
srun python3 cifar10_cnn.py --data_path=/scratch/dac/mvsjober/cifar-10-batches-py
