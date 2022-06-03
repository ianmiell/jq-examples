#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='../json/pod_example.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.status'" 'trying'
