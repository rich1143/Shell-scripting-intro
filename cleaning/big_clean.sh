#!/bin/bash

# Arguments: compressed tar archive and a scratch directory.
ARCHIVE=$1
DIRECTORY=$2

# Save location for later.
HERE=`pwd`

# Extract contents of tar archive into the directory.
tar zxf $ARCHIVE --directory $DIRECTORY

# Navigate to the scratch directory.
# This is where the deleting will be done.
cd $DIRECTORY

# Find and then delete all files containing "DELETE ME!"
rm `grep -l -r "DELETE ME!" *`

# Compress files into a new tar archive in the location saved earlier.
tar czf "$HERE/cleaned_$ARCHIVE" *
