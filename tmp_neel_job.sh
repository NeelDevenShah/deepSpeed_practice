#!/bin/bash 
#SBATCH -J threeminds_dgx_atmpt_1
#SBATCH -N 1
#SBATCH --ntasks-per-node=16 
#SBATCH --gres=gpu:A100-SXM4:1 
#SBATCH --time=00:10:00 
#SBATCH --reservation=gpucbh_106 
#SBATCH --partition=benchp 
#SBATCH --error=error.%j.err 
#SBATCH --output=output.%j.out 

echo "Starting at `date`" 
echo "Running on hosts: $SLURM_NODELIST" 
echo "Running on $SLURM_NNODES nodes." 
echo "Running $SLURM_NTASKS tasks." 
echo "Job id is $SLURM_JOBID" 
echo "Job submission directory is : $SLURM_SUBMIT_DIR" 


cd $SLURM_SUBMIT_DIR 

source /nlsasfs/home/gpucbh/vyakti1/Brain-TV/workstation/pythonenvs/env1-python38/env1-lbtv/bin/activate

export WANDB_MODE=offline

# enroot start --mount /nlsasfs/home/gpucbh/vyakti1:mnt nvidia+tensorflow+21.10-tf2-py3.sqsh  
python3 /nlsasfs/home/gpucbh/vyakti1/Brain-TV/workstation/lab/LatestBrain-TV/code/stageA1_mbm_pretrain.py
