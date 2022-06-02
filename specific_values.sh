#!/bin/bash

source library.sh

FILE='json/example_with_arrays.json'

cmd "cat $FILE" 'the raw file'
cmd "cat ${FILE} | jq '.platform'" '^^just get the .platform value'
cmd "cat ${FILE} | jq '.atlas'" 'just get the .atlas value'
cmd "cat ${FILE} | jq '.atlas, .platform'" 'get atlas, followed by platform in separate objects'
