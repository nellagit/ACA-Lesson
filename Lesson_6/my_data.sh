#!/bin/bash


name=$1
lastname=$2
age=$3
gender=$4

declare -A identification1=(
    [name]='Armen'
    [lastname]='Avoyan'
    [age]='45'
    [gender]='M'
)
declare -A identification2=(
    [name]='Zara'
    [lastname]='Khanjyan'
    [age]='56'
    [gender]='F'
)
declare -A identification3=(
    [name]='Poghos'
    [lastname]='Poghosyan'
    [age]='23'
    [gender]='M'
)
declare -n identification
for identification in ${!identification@}; do
    echo "${identification[name]} ${identification[lastname]} ${identification[age]} ${identification[gender]}"

done

