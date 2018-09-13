$command="oc --namespace=kubedemo create -f kubedemo-deployment.yaml --record --validate=false"
Write-Host $command
iex $command