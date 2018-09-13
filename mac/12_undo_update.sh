#!/bin/bash

command='kubectl --namespace=kubedemo rollout undo deployment/razor'
echo $command
$command
