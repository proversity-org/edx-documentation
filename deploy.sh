#!/usr/bin/env bash


	ERROR=$?
if [ "$ERROR" -eq 0 ];
then
    echo "Updated!"
	exit 0
else
    echo "Update failed!"
	exit 1
fi

