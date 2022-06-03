#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/employee_array.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '..'" 'Basic recursive descent'
cmd "cat $FILE | jq '..|.workers?'" 'Basic recursive descent, just pick out workers, ignoring failures to match'
cmd "cat $FILE | jq '..|.name?'" 'Basic recursive descent, just pick out names, ignoring failures to match'
