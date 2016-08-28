#!/bin/bash

NUMBER=$1
DIRECTORY=$2

tar zxf NthPrime.tgz --directory $DIRECTORY

cd $DIRECTORY/NthPrime

gcc -o NthPrime main.c nth_prime.c

./NthPrime $NUMBER
