#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/pods_example.json'

cmd "cat $FILE" 'Raw file'
cmd "cat $FILE | jq '.items[].status.containerStatuses'" 'Filter on containerStatuses'
cmd "cat $FILE | jq '.items[].status.containerStatuses'" 'Filter on containerStatuses, turn array into series of objects'
cmd "cat $FILE | jq '.items[].status.containerStatuses[] | select(.restartCount == 1)'" 'Filter on containers with restartCount == 1'
