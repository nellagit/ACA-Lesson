#!/bin/bash

mkdir odd
mkdir even

for i in {1..20..2}; do

     touch odd/$i.txt
done

for i in {2..20..2}; do

     touch even/$i.txt
done

