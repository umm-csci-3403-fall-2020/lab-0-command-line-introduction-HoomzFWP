#!/usr/bin/env bash

# Hoomz Damte
# University of Minnesota, Morris
# August 2020

input=$1

scratch=$(mktemp --directory)

tmpDir=$(mkdir NthPrime)

tar zxf NthPrime.tgz -C $scratch

gcc $scratch/NthPrime/main.c $scratch/NthPrime/nth_prime.c -o $scratch/NthPrime/NthPrime

output=$($scratch/NthPrime/NthPrime $input)

echo $output

rm -rf $scratch
