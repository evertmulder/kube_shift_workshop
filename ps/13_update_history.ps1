$command='oc --namespace=kubedemo rollout history deployment razor'
Write-Host $command
iex $command