#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/employee_array.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.workers'" 'Just the workers array'
cmd "cat $FILE | jq '.workers[].name'" 'Just the workers array names'
cmd "cat $FILE | jq '[.workers[].name]'" 'Just the workers array names, in an array'
