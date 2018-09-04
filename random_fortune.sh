#!/bin/bash

INPUT_FILES="fortunes*.txt"

INTERVAL=12  # seconds

COWS=$(cowsay -l | tail -n +2)
FORTUNES=$(cat $INPUT_FILES)

[ -n "$1" ] && INTERVAL="$1"

while true ; do
	COW=$(echo $COWS | tr ' ' '\n' | shuf -n 1)
	FORTUNE=$(echo "$FORTUNES" | shuf -n 1)
	clear
	echo -e $FORTUNE | cowsay -f $COW | lolcat
	read -t $INTERVAL
done

