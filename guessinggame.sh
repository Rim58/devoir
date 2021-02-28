function congrats {
	echo "Congratulations! You have given the right answer!"
}

function guessagain {
	echo "you guessed a number too high"
}

variable=0

while [[ $variable -eq 0 ]]
do
	echo "Please type the number of files in current directory"
	read response
	echo "you entered : $response"
	files=(*)
	numfiles=${#files[*]}
	echo "the number of files is: $numfiles"
	if [[ response -eq numfiles ]]
	then
		congrats
		variable=1
	elif [[ response -gt numfiles ]]
	then
		guessagain
	else
		echo "you guessed a number too low"
	fi
done
