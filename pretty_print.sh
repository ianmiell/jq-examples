#!/bin/bash

source library.sh

FILE='json/example_with_arrays.json'

cmd "cat $FILE" 'the raw file'
cmd "cat $FILE | jq '.'" 'pretty-print the output'
