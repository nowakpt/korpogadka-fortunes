#!/bin/bash

ls /usr/share/cowsay/cows/ | grep '\.cow$' | sed s/'.cow$'// > cows.txt && echo 'List of cows has been updated.'

