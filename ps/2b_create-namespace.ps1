$command="oc create -f .\kubedemo-namespace.yaml" 
Write-Host $command 
iex $command