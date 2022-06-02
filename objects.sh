#!/bin/bash

source library.sh

FILE='json/example_with_arrays.json'

cmd "cat $FILE" 'the raw file'
cmd "cat $FILE | jq '{platform: .platform}'" 'create object with platform item in it'
cmd "cat $FILE | jq '{platform}'" 'create object with platform item in it - shorthand for last one'
cmd "cat $FILE | jq '{"platform_name": .platform}'" 'the left hand side of an object is its name, and is evaluated as such'
cmd "cat $FILE | jq '{(.platform | .): .platform}'" 'to get the name evaluated from a value, place it in parentheses where it will be calculated - note that in parentheses it is a jq stream like any other, so you can pipe it'
cmd "cat $FILE | jq '{platform, material: .materials[]}'" 'if one of the expressions produces multiple results, multiple objects will be produced. It is like a multiplier for the object'
cmd "cat $FILE | jq '[{platform, material: .materials[]}]'" 'remember to place inside an array to turn back into a json object.'
cmd "cat $FILE | jq '{platform, material: .materials[]} | keys'" 'get the keys of an object with keys'
cmd "cat $FILE | jq '[{platform, material: .materials[]}] | keys'" 'on an array, this will give the indices'
