#!/usr/bin/env bash
# File: guessinggame.sh

count=1 
num_of_files=$(ls -l | wc -l)
 	
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
	
	elif [[ response -gt $num_of_files ]]
	then
		echo "Too high!"
	else
		echo "only integers please!"
	fi

}

while [[ count -gt 0 ]]
do 
	guess_and_tell

done

