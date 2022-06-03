#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/employee.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.workers | select(.name==\"Ol Nick\")'" 'Filter specific name'
cmd "cat $FILE | jq '.workers | select(.dept==\"accounts\")'" 'Filter accounts department'
