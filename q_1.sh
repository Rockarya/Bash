#!/bin/bash
red='\033[0;31m'
yellow='\033[1;33m'
blue='\033[0;34m'
a=$1
b=$2
df -x tmpfs | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  usep=$(echo "100 -$usep" | bc -l)
if (( $(echo "$usep < $a" | bc -l ) ));
then
	{
		echo -e "${blue}OK,$partition,$usep%"
	}

elif (( $(echo "$usep > $b" | bc -l) ));
then
	{
		
		echo -e "${red}CRITICAL,$partition,$usep%"
	}
else
	{
		echo -e "${yellow}WARNING,$partition,$usep%"
	}
fi
done




