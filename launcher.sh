#!/bin/bash

# set the container bind paths here:
export APPTAINER_BIND="/hpc"


MY_BINARY_NAME=$(basename "$0")

apptainer run --writable-tmpfs --nv ${PWD}/this.sif "${MY_BINARY_NAME} $@"

exit 0

