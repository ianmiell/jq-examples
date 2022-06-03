#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='../json/example_with_arrays.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.materials[1]'" 'output second element of materials'
cmd "cat $FILE | jq '.materials[0:3]'" 'output first three elements of materials'
cmd "cat $FILE | jq '.materials[-1]'" 'output last element of materials'
cmd "cat $FILE | jq '.materials[-3:-1]'" 'output last two elements of materials'
