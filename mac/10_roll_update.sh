#!/bin/bash
command='kubectl --namespace=kubedemo set image deployment/razor razor=evertmulder/razor:v2'
echo $command
$command
