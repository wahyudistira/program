#!/bin/bash

USERNAME=$1

if [[ "$USERNAME" == "" ]]; then
	echo "ERROR: No username specified!"
	echo "USAGE: $0 <username>"
	exit 1
fi

pn=`ps awwwwux | awk '/${USERNAME}/ && /loginwind[o]w/ { print $2 }'`
if [[ $pn != "" ]]; then
	sudo kill -9 $pn
	echo "$USERNAME is logged off"
else
	echo "$USERNAME is not logged in"
fi