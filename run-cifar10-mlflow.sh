#!/bin/bash
#SBATCH --account=project_2001659
#SBATCH --partition=gputest
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=32G
#SBATCH --time=15
#SBATCH --gres=gpu:v100:1,nvme:10

module purge
module load pytorch

set -x

tar xf /scratch/project_2001659/mvsjober/cifar-10-python.tar.gz -C $LOCAL_SCRATCH

export MLFLOW_TRACKING_URI=/scratch/project_2001659/mvsjober/mlruns
export MLFLOW_EXPERIMENT_NAME=cifar-mlflow

# Remember: the first time you need to run this to create the new experiment in MLflow:
# mlflow experiments create --experiment-name cifar-mlflow

srun python3 cifar10_cnn_mlflow.py --data_path=$LOCAL_SCRATCH/cifar-10-batches-py
