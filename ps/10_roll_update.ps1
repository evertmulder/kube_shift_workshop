$command='oc --namespace=kubedemo set image deployment/razor razor=evertmulder/razor:v2'
Write-Host $command
iex $command
