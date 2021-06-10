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
Usage: ./looper.sh [-h(help) | -q(quiet)] <path_to_wordlist> <pre_command> <post_command>
"
	exit
fi

if [ "$1" = "-q" ];then
	wordlist="$2"
	commandStart="$3"
	commandEnd="$4"
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
	commandEnd="$3"
fi

#--------------------------------
# LOOPING
echo ""
while read -r line; do
	name="$line"
	command="$commandStart $name $commandEnd"
	$command
done < "$wordlist"

echo "
Process Done"
