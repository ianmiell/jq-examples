#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/employee.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.workers'" 'Just the workers property'
cmd "cat $FILE | jq '.workers.name'" 'Just the workers property'
