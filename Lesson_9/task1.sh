#!/bin/bash


read -p "Enter a number " number

        if [[ ${number}%3 -eq 0 || ${number}%5 -eq 0 || ${number}%7 -eq 0 ]]; then
          echo "Divisible"
        else
          echo "Not Divisible"
        fi

