#!/bin/bash

command='kubectl --namespace=kubedemo scale deployment razor --replicas=3'
echo $command 
$command