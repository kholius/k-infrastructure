#!/bin/bash

# Operator 

# &&  
# Execute the second operation only if the first works 
cat file1 && echo " You looked inside file1"

# ||
# Execute the second operation only if the first doesn't works
cat file1 || echo " this file must be created ! "

# ;
# Execute the operation ( each operation is parse by ; )
echo "Hello There" ; echo "General Kenobi!"


# &
# execute the second opération without taking care about error... (just do it)
echo "Hello There" & echo "General Kenobi!"

# create environnement 
export VARIABLE=value