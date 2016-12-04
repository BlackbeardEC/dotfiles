#!/bin/bash
#
#Replace spaces and brackets '[]' with '-' in current directory
#Author - Blackbeard
#

find * | while read file; do; oldfilename=$file; newfilename=$(echo "$oldfilename" | sed 's/[][ _-]/-/g'); mv $oldfilename $newfilename; done;

