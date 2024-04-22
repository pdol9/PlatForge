#!/bin/bash

# color codes
CLEAR="\033[0m"
PR="\033[1;35m"

# Find all directories in the current directory
num_directories=$(find . -maxdepth 1 -type d | wc -l)

# Check if there's more than one directory
if [ $num_directories -gt 2 ]; then
	echo -e "${PR}Error: More than one directory found.\n/srcs/ directory should only contain one project.${CLEAR}"
	exit 1
else
	# initialise application
	cd */ && make
	/bin/bash
fi
