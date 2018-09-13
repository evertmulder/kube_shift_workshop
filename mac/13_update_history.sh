#!/bin/bash

command='kubectl --namespace=kubedemo rollout history deployment razor'
echo $command
$command