#!/bin/bash

# create the file with random words just once since its time consuming
if [ ! -f input.txt ]; then
	python iter.py
fi

# Unit test showing where things fail
go test -run TestCallingSetMessageLotsOfTimes -timeout 120m

