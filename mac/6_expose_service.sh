#!/bin/bash

command='kubectl --namespace=kubedemo expose deployment --port=80 razor --type=LoadBalancer'
echo $command
$command