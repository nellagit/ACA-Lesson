#!/bin/bash

 

read -p "Enter a number " number

        if [[ ${number} -lt 8 || ${number} -gt 32 ]]; then

          echo "Error: the length of password must be between 8 and 32"

        else

          < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-${number}};echo;

        fi
