#!/bin/bash

source library.sh

FILE='json/pods_example.json'

# https://blog.jverkamp.com/2015/04/01/parsing-aws-instance-data-with-jq/
jq '.items[].status.containerStatuses | select(.[].ready == false)'
