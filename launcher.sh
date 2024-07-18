#!/bin/bash

# set the container bind paths here:
export APPTAINER_BIND="/hpc"


#internal variables for the dirname and the basename 


MY_BINARY_NAME=$(basename "$0")
MY_BIN_AND_CONT_LOC=$(dirname "$0")

# time to run the container
apptainer exec --writable-tmpfs --nv ${MY_BIN_AND_CONT_LOC}/this.sif "${MY_BINARY_NAME} $@"

exit 0

