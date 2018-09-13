#!/bin/bash

pushd razor
dotnet publish -c Release -o out
docker build -t evertmulder/razor:v1 .

oc get projects

popd