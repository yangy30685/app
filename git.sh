#!/bin/bash 

TIME=`date "+%Y-%m-%d %H:%M:%S"`;

echo start...
echo

git pull
git add -A > /dev/null 2>&1

if [ $? -eq 0 ]; then
git commit -m "update time $TIME"
fi

if [ $? -eq 0 ];
then
git push origin master > /dev/null 2>&1
	echo Done!
	exit 0
else 
	echo No change made!
	exit 1
fi
