#!/bin/bash

# Two arguments called with this program: the number given as input
# and the directory used to extract and compile the program.
NUMBER=$1
DIRECTORY=$2

# Extract the contents of NthPrime.tgz into the directory.
# Should create an NthPrime direcory inside this direcory.
tar zxf NthPrime.tgz --directory $DIRECTORY

# Navigate into the directory just created.
cd $DIRECTORY/NthPrime

# Compiles and links main.c and nth_prime.c files found
# in the NthPrime directory.
# Should create an executable NthPrime.
gcc -o NthPrime main.c nth_prime.c

# Calls the executable NthPrime with the number that was
# passed in as an argument.
./NthPrime $NUMBER
