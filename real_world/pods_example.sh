#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='../json/pods_example.json'

# https://blog.jverkamp.com/2015/04/01/parsing-aws-instance-data-with-jq/
cmd "cat $FILE" 'Raw file'
cmd "cat $FILE | jq '.items[].status.containerStatuses'" 'select containerStatuses'
cmd "cat $FILE | jq '.items[].status.containerStatuses | select(.[])" 'select ready1'
cmd "cat $FILE | jq '.items[].status.containerStatuses | select(.[].restartCount == 1)'" 'select ready'
