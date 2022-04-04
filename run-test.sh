#!/bin/bash
#SBATCH --account=dac
#SBATCH --partition=gputest
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=32G
#SBATCH --time=15
#SBATCH --gres=gpu:v100:1

module load pytorch
srun python3 cifar10_cnn.py --data_path=/scratch/dac/mvsjober/cifar-10-batches-py $*
