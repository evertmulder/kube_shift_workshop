$command="oc run razor --image=evertmulder/razor:v1 --port=80 --replicas=2"
Write-Host $command
iex $command