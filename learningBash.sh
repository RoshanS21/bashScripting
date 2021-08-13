#!/usr/bin/bash
# This is a comment
# The one on Line 1 is a shebang

function NewLine {
    echo " "
}

function TotalFiles {
    find -type f | wc -l
}

function TotalDirectories {
    find -type d | wc -l
}

echo $SHELL
NewLine

cal
NewLine

date
NewLine

echo "Hello World!"
NewLine

greeting="Welcome"
user=$(whoami)
day=$(date +%A)
echo "$greeting bak $user! Today is $day."
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
NewLine

currentPath=$(pwd)
numberOfFiles=$(TotalFiles)
numberOfDirectories=$(TotalDirectories)
echo "Current Path: $currentPath"
echo "Number of Files: $numberOfFiles"
echo "Number of Directories: $numberOfDirectories"
NewLine

if [ $numberOfFiles -gt $numberOfDirectories ]; then
    echo "$numberOfFiles is greater than $numberOfDirectories"
else
    echo "$numberOfFiles is less than $numberOfDirectories"
fi
NewLine

# Numbers after a $ sign refer to arguments/parameters
# -z checks whether paramter contains any value
# returns true if length of $1 is zero
if [ -z $1 ]; then
    user=$(whoami)
else
# -d returns true if directory exists
    if [ ! -d "/home/$1" ]; then
        echo "Requested \"$1\" user home directory does not exist."
        exit 1
    fi
    user=$1
fi
echo "Current user: $user"
NewLine

# Loops
for i in 1 2 3; do echo "Number: $i"; done
NewLine
for i in $(cat input.txt); do
    echo -n $i | wc -c;
done
NewLine


# For loop to print names of all files and directories inside your
# current working directory along with the number of characters
# each file consists from.
for i in $(find -type f); do
    temp=$(echo -n $i | wc -c)
    echo "$i $temp";
done
NewLine

# While Loop
counter=0
while [ $counter -lt 5 ]; do
    let counter+=1
    echo $counter
done
NewLine
# Untile loop
let counter+=1
until [ $counter -lt 2 ]; do
    let counter-=1
    echo $counter
done
NewLine
x=10;y=33
echo $(( $x + $y ))
echo $(expr 10 \* 2)
expr 10 + 2
let a=2**3
let a++
echo $a
NewLine

# bc
squareroot=$( echo 'scale=20;sqrt(50)' | bc)
echo $squareroot