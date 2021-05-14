#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mask=lesion_dwi_space_thr_900_bin.nii.gz
intensity=p03_1_r_FW.nii.gz

matlab -nosplash -nodesktop -nojvm -r "cd('$DIR'); heterogeneity('$mask', '$intensity'); quit"
