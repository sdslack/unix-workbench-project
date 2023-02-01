#!/usr/bin/env bash
# File: guessinggame.sh

# calculate correct response
file_list=$(ls)

count=0
for i in $file_list
do
	let count=$count+1
done

# function that runs game
function game {
	echo "How many files are in the current directory?"
	read guess

	if [[ $guess -eq $count ]]
	then
		echo "Congratulations, your guess was correct!"
	elif [[ $guess -lt $count ]]
	then
		echo "Your guess was too low, try again!"
		game
	elif [[ $guess -gt $count ]]
	then
		echo "Your guess was too high, try again!"
		game
	fi
}

# call function to start game
game
