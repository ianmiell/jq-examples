#!/bin/bash

cd "${0%/*}"

source ../library/library.sh

FILE='json/example_with_arrays.json'

cmd "cat $FILE" 'the raw file'
cmd "cat ${FILE} | jq '[.atlas, .platform]'" 'get atlas, followed by platform in separate objects, then place in json array to make valid json'
