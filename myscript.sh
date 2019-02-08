# bash function
# https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php

# bash list files sorted by name loop
# https://stackoverflow.com/questions/7992689/bash-how-to-loop-all-files-in-sorted-order

# bash list files for loop
# https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash

# bash file exists
# https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash

# how to check directory in bash
# https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
list() {
	for filename in `ls $1 | sort -V`; do
		if [ -e "$1/$filename" ]; then
			echo "$1/$filename"

			if [ -d "$1/$filename" ]; then
				list "$1/$filename"
			fi
		fi
	done
}

# bash check if parameter exists
# https://stackoverflow.com/questions/6482377/check-existence-of-input-argument-in-a-bash-shell-script
if [ $# -eq 0 ]; then
    echo "No arguments supplied"
	exit
fi

if [ ! -d $1 ]; then
	echo $1
else
	list $1
fi
