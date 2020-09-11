#!/usr/bin/bash
##
echo -n "Enter a number: "
read _NUM

if [[ _NUM -gt 50 ]]
then
	_NUM=$((_NUM+500))
	echo "I just added 500 to your answer which is now: $_NUM"
elif [ $_NUM -lt 50 ]
then
	_NUM=$((_NUM+1000))
	echo "I just added 1000 to your answer which is now: $_NUM"
elif test "$_NUM" -gt 500
then
	_NUM=$((_NUM-499))
	echo "That is too much...I just subtracted 499 and now it is $_NUM"
else
	echo "No way..."
fi

##
## End of file...
