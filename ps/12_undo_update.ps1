$command='oc --namespace=kubedemo rollout undo deployment/razor'
Write-Host $command
iex $command

$command='oc --namespace=kubedemo rollout status deployment/razor'
Write-Host $command
iex $command
