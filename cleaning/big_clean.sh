#!/bin/bash

# Arguments: compressed tar archive and a scratch directory.
ARCHIVE=$1
DIRECTORY=$2

# Save location for later.
HERE=`pwd`

# Extract contents of tar archive into the directory.
tar zxf $ARCHIVE --directory $DIRECTORY

# Navigate to the new archive in the scratch directory.
# This is where the deleting will be done.
cd $DIRECTORY/${ARCHIVE%.*}

# Find and then delete all files containing "DELETE ME!"
rm `grep -l DELETE ME! *`

# Navigate to scratch directory.
cd $DIRECTORY

# `dir` returns everything inside $DIRECTORY.
# Compress these files into a new tar archive.
tar czf cleaned_$ARCHIVE `dir`

# Now move the new archive to the correct location.
mv cleaned_$ARCHIVE $HERE
