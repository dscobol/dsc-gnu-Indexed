#!/bin/bash

# Compile and run VSCBEX02

# static parms
SYSLIB="../cpy"

# Program parms
PGM=VSCBEX02
export DD_CUSTIDX="../idata/customer.idat"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
