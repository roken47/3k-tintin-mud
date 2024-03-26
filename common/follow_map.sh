#!/usr/bin/env bash 

MAP_FILE='/home/roken47/ramdisk/map.txt' 
MAP_SIZE='/home/roken47/ramdisk/map_size.tin' 
REFRESH_RATE=.25

while [ "true" ]; do 
    echo \#var MAP_ROWS $(tput cols)\; > $MAP_SIZE 
    echo \#var MAP_LINES $(tput lines)\; >> $MAP_SIZE 
    clear 
    cat $MAP_FILE 
    sleep $REFRESH_RATE 
done
