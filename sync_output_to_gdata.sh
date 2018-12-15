#!/bin/bash
#PBS -q copyq
#PBS -l ncpus=1
#PBS -l wd
#PBS -l walltime=1:00:00,mem=2GB
#PBS -P v45
#PBS -N sync_output_to_gdata

# Set this directory to something in /g/data3/hh5/tmp/cosima/
# Make a unique path for your set of runs.
# DOUBLE-CHECK IT IS UNIQUE SO YOU DON'T OVERWRITE EXISTING OUTPUT!
GDATADIR=/g/data3/hh5/tmp/cosima/access-om2/1deg_jra55v13_iaf_spinup1_B1

mkdir -p ${GDATADIR}
cd archive
rsync --exclude "*.nc.*" -av --safe-links --no-g output* ${GDATADIR}
