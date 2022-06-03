#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/pod_example.json'

cmd "cat $FILE" 'The raw file'
cmd "cat $FILE | jq '.status'" 'The status property'
cmd "cat $FILE | jq '.status.conditions'" 'The conditions property'
cmd "cat $FILE | jq '.status.conditions[]'" 'The conditions property as series of objects'
cmd "cat $FILE | jq '.status.conditions[] | select(.type == \"Ready\")'" 'Filter on the type condition where type is Ready'
