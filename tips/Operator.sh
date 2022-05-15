#!/bin/bash

# Operator 

# && = AND
# Execute the second operation only if the first works 
cat file1 && echo " You looked inside file1"

# || = OR
# Execute the second operation only if the first doesn't works
cat file1 || echo " this file must be created ! "

# ;
# Execute the operation ( each operation is parse by ; )
echo "Hello There" ; echo "General Kenobi!"


# &
# execute the second opération without taking care about error... (just do it)
echo "Hello There" & echo "General Kenobi!"

# create environnement Var
export VARIABLE=value


# + 
# increment int, float and string
echo 1+1
echo "you are $USER" + " and you're on $HOSTNAME"

# -
echo 2-1

# %
# make a division and don't keep the rest
echo 2%1
