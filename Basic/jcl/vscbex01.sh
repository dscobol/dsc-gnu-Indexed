#!/usr/bin/env bash

# Compile and run VSCBEX01

# static parms
SYSLIB="../cpy"

# Program parms
PGM=VSCBEX01
export DD_CUSTTXT="../data/customer.dat.txt"
export DD_CUSTIDX="../idata/customer.idat"

# clean up
rm -f ../bin/$PGM 2>/dev/null || true
rm -f ../idata/customer.idat 2>/dev/null || true

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
