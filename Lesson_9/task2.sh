#!/bin/bash



mkdir ~/ACA-Lesson/Lesson_9/odd 
mkdir ~/ACA-Lesson/Lesson_9/even


for ((i = 1 ; i <= 20 ; i++)); do
        if [[ i%2 -eq 0 ]]; then
                touch ~/ACA-Lesson/Lesson_9/even/$i.txt
        else
                touch ~/ACA-Lesson/Lesson_9/odd/$i.txt
        fi
done

