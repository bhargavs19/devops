#!/bin/bash
# Storing file into a variable
file="/root/script/servers.txt"
#Servers file include all the ip addresses of the different servers
while read -r line
do
 $line
done <"$file"

