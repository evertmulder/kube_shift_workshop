#!/bin/bash

command='docker build -t evertmulder/razor:v2 .'
echo $command

pushd razor
dotnet publish -c Release -o out
docker build -t evertmulder/razor:v2 .
popd
docker images | grep razor