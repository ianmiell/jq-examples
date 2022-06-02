#!/bin/bash

source library.sh

FILE='json/aws_example.json'

# https://blog.jverkamp.com/2015/04/01/parsing-aws-instance-data-with-jq/
cmd "cat $FILE | jq '.[][].Instances[] | select(.Tags[]?.Value==\"terraform_poc03\")'" 'Get instances that have the appropriate tag value'
