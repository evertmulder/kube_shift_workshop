$command='oc --namespace=kubedemo rollout status deployment/razor'
Write-Host $command
iex $command
