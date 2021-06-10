#!/bin/sh

# Author : Abhisek R
# Twitter - https://twitter.com/abh1sek_r
# Github - https://github.com/abhisek3122/
# Instagram - https://www.instagram.com/abh1sek_r/
# Script follows here:

#--------------------------------
# INITIAL CASE
commandStart=""
commandEnd=""
#--------------------------------
# BANNER, VARIABLES AND OPTIONS
if [ "$1" = "-h" ];then
echo "
 _                                
| |    ___   ___  _ __   ___ _ __ 
| |   / _ \ / _ \| '_ \ / _ \ '__|
| |__| (_) | (_) | |_) |  __/ |   
|_____\___/ \___/| .__/ \___|_|   
                 |_|              

Author : Abhisek R
Twitter : https://twitter.com/abh1sek_r
Github : https://github.com/abhisek3122/
----------------------------------------
Disclaimer:
Author and Contributors are not responsible for any malpractices done with this tool.
----------------------------------------
Usage: ./looper.sh [-h|-q] <path_to_wordlist> <pre_command> [-sy|-sn] <post_command>
  -h (help)
  -q (quiet)
  -sy (space_between)
  -sn (no_space_between)

Do not forget to specify option [-sy | -sn]
"
	exit
fi

if [ "$1" = "-q" ];then
	wordlist="$2"
	commandStart="$3"
	space="$4"
	commandEnd="$5"
else
echo "
 _                                
| |    ___   ___  _ __   ___ _ __ 
| |   / _ \ / _ \| '_ \ / _ \ '__|
| |__| (_) | (_) | |_) |  __/ |   
|_____\___/ \___/| .__/ \___|_|   
                 |_|              

Author : Abhisek R
Twitter : https://twitter.com/abh1sek_r
Github : https://github.com/abhisek3122/
"
	wordlist="$1"
	commandStart="$2"
 	space="$3"
	commandEnd="$4"
fi

#--------------------------------
# LOOPING
echo ""
while read -r line; do
	name="$line"
	if [ "$1" = "-q" ];then
		if [ "$4" = "-sy" ];then
		command="$commandStart $name $commandEnd"
		$command
		else
		command="$commandStart$name$commandEnd"
		$command
		fi
	else
		if [ "$3" = "-sy" ];then
		command="$commandStart $name $commandEnd"
		$command
		else
		command="$commandStart$name$commandEnd"
		$command
		fi
	fi
	
done < "$wordlist"

echo "
Process Done"
