#!/bin/bash

FORTUNES_LIST='http://korpogadka.pl/motywacje.js'
OUTPUT_FILE='fortunes.txt'

wget -O- $FORTUNES_LIST | grep '^motywacja' | grep -o '<b>.*<\/b>' | sed s/'^<b>\s*'// | sed s/'\s*<\/b>$'// | sed /'^$'/d > $OUTPUT_FILE && echo "Downloaded successfully."


