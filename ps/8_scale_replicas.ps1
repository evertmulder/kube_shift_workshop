$command='oc --namespace=kubedemo scale deployment razor --replicas=8'
Write-Host $command 
iex $command