#!/bin/bash

# Arguments: compressed tar archive and a scratch directory.
ARCHIVE=$1
DIRECTORY=$2

HERE=`pwd`

# Extract contents of tar archive into the directory.
tar zxf $ARCHIVE --directory $DIRECTORY

# Navigate to the new archive in the scratch directory.
# This is where the deleting will be done.
cd $DIRECTORY/${ARCHIVE%.*}

# Find and then delete all files containing "DELETE ME!"
rm `grep -l DELETE ME! *`

# Navigate to scratch directory.
# This is where the new archive will be created.
cd $DIRECTORY

tar czf

# /tmp/tmp.aZWeJ2ibgc my temporary directory
