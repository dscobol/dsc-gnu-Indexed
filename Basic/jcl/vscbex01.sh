#!/bin/bash

# Compile and run VSCBEX01

# static parms
SYSLIB="../cpy"

# Program parms
PGM=VSCBEX01
export DD_CUSTTXT="../data/customer.dat.txt"
export DD_CUSTIDX="../idata/customer.idat"

# clean up
rm ../bin/$PGM
rm ../idata/customer.idat

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM 

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
