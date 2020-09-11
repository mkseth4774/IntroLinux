#!/bin/bash
##
## STRING test version of if...then...elif...
##
echo -n "Please enter a number between 1 and 10: "
read _NUM

if [[ $_NUM == 6 ]]
then
	echo "Do you have ESPN...it was like you were reading my mind! ;-)"

elif [[ $_NUM == 1 ]]
then
	echo "Almost!  You were so close!  Like 5 away!"

elif [[ $_NUM == 2 ]]
then
	echo "Almost!  You were so close!  Like 4 away!"

elif [[ $_NUM == 3 ]]
then
	echo "Almost!  You were so close!  Like 3 away!"

elif [[ $_NUM == 4 ]]
then
	echo "Almost!  You were so close!  Like 2 away!"

elif [[ $_NUM == 5 ]]
then
	echo "Almost!  You were so close!  Like 1 away!"

elif [[ $_NUM == 7 ]]
then
	echo "Almost!  You were so close!  Like 1 away!"

elif [[ $_NUM == 8 ]]
then
	echo "Almost!  You were so close!  Like 2 away!"

elif [[ $_NUM == 9 ]]
then
	echo "Almost!  You were so close!  Like 3 away!"

elif [[ $_NUM == 10 ]]
then
	echo "Almost!  You were so close!  Like 4 away!"
fi

##
## End of file...
