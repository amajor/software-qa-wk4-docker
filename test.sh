#!/bin/bash

visit1=$(curl -s http://web:5000/ |sed 's/Hello World.*\([0-9]\{1,\}\) times./\1/')
printf "\n  --> Visited %s time." "$visit1"
visit2=$(curl -s http://web:5000/ |sed 's/Hello World.*\([0-9]\{1,\}\) times./\1/')
printf "\n  --> Visited %s times." "$visit2"
visits=$(curl -s http://web:5000/ |sed 's/Hello World.*\([0-9]\{1,\}\) times./\1/')
printf "\n  --> Visited %s times.\n" "$visits"

if [[ $visits -eq 3 ]]
then
   printf "\n================"
   printf "\n  Test Passed!\n"
   printf "================\n\n"
else
   printf "\n================"
   printf "\n  Test FAILED!\n"
   printf "================\n\n"
fi
