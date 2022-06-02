#!/bin/bash

source library.sh

FILE='json/example_with_arrays.json'

cmd "cat $FILE" 'the raw file'
cmd "cat $FILE | jq '.[] | .[]'" 'take the object and print all its objects - fails because 'pc' is a string, which cannot be iterated over.'
cmd "cat $FILE | jq '.atlas | .[]'" 'compare above with this, where we take atlas and iterate over its objects'
cmd "cat $FILE | jq '.[] | .[]?'" 'this time we put a '?' after the '.[]', which stops the error if the item is not an object'
