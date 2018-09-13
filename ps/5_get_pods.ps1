$command="oc get pods --namespace=kubedemo"
Write-Host $command
iex $command