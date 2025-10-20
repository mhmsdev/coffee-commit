#!/bin/bash

# Get current date and time
YEAR=$(date +"%Y")
MONTH=$(date +"%m")
DAY=$(date +"%d")
TIME=$(date +"%H-%M-%S")

# Create directory structure: coffees/YYYY/MM/DD
DIR="../coffees/${YEAR}/${MONTH}/${DAY}"
mkdir -p "$DIR"

# File name for this coffee
FILE="${DIR}/${TIME}.txt"

# Write a fun message
echo "☕ Coffee logged on $(date)" > "$FILE"

# Commit and push
git add "$FILE"
git commit -m "Coffee at ${YEAR}-${MONTH}-${DAY} ${TIME}"
git push
