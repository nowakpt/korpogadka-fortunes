#!/bin/bash

INPUT_FILE='fortunes.txt'

INTERVAL=8  # seconds

COWS=$(cowsay -l | tail -n +2)

[ -n "$1" ] && INTERVAL="$1"

while true ; do
	COW=$(echo $COWS | tr ' ' '\n' | shuf -n 1)
	clear
	shuf -n 1 $INPUT_FILE | cowsay -f $COW | lolcat
	read -t $INTERVAL
done

