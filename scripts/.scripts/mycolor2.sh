#!/bin/bash
#
# My Colors, made for learning. - Blackbeard
#

text=" #RICE "
for i in {30..37}; 
do
    for b in {40..47};
    do
        echo -en "\e[${b}m\e[${i}m$text\e[1;${i}m$text\e[0m";
    done;
    echo;
done;

# ◆
