$command='oc --namespace=kubedemo expose deployment razor --port=80 --type=LoadBalancer --name razor-service'
Write-Host $command
iex $command