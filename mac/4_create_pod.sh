#!/bin/bash
command="kubectl --namespace=kubedemo run razor --image=evertmulder/razor:v1 --port=80"
echo $command
$command