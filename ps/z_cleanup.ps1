# in some cases you can just delete the deployment
$command1="oc delete deploy/razor --namespace=kubedemo"
Write-Host $command1
iex $command1

# in other cases you might wish to wipe the whole namespace
$command2='kubectl delete -f ./kubedemo-namespace.yaml'
Write-Host $command2
iex $command2