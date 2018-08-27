#!/bin/bash

INPUT_FILE='fortunes.txt'

INTERVAL=8  # seconds

[ -n "$1" ] && INTERVAL="$1"

while true ; do clear; shuf -n 1 $INPUT_FILE | cowsay -f $(shuf -n 1 cows.txt) | lolcat ; sleep $INTERVAL ; done

