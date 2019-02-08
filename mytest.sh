# https://unix.stackexchange.com/questions/233348/testing-using-shell-scripts
rm -rf mytest

mkdir mytest
touch mytest/1
touch mytest/2
mkdir mytest/a
mkdir mytest/a/x
touch mytest/a/x/1
touch mytest/a/x/2
mkdir mytest/a/y
mkdir mytest/b

# bash save program output to file
# https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file
sh myscript.sh mytest > myscript.out

# bash compare two files same
# https://stackoverflow.com/questions/12900538/fastest-way-to-tell-if-two-files-are-the-same-in-unix-linux
if cmp --silent myscript.out mytest.out ; then
	echo OK
else
	echo NOT OK
fi
