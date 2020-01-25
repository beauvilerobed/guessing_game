#!/usr/bin/env bash
# File: guessinggame.sh

count=1 
num_of_files=$(ls -l | wc -l)-1
 	
function guess_and_tell {

echo "guess the number of files in the current directory"
read response

	if [[ $num_of_files -eq response ]]
	then
		echo "You got it! Good Job!"
		count=0
		
	elif [[ $num_of_files -gt response ]]
	then
		echo "Too low!"
	
	else
		echo "Too high!"
	fi

}

while [[ count -gt 0 ]]
do 
	guess_and_tell

done

