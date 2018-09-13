Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
& minishift oc-env | Invoke-Expression
& minishift docker-env | Invoke-Expression
$c="oc login -u system:admin"
Write-Host $c
iex $c