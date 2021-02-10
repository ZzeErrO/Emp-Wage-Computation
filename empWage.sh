#!/bin/bash -x

empCheck=$((RANDOM%2))
IS_PRESENT=1

if [ $IS_PRESENT -eq $empCheck ]
then
	echo EMPLOYEE IS PRESENT
else
	echo EMPLOYEE IS ABSENT
fi
