$ip = (minishift ip) | Out-String 
Write-Host "Host node ip: $ip"

# Get the NodePort of the service
$serviceInfo = (kubectl --namespace=kubedemo get services razor-service -o json) | Out-String | ConvertFrom-Json
$nodePort=$serviceInfo.spec.ports.nodePort

Write-Host "The service uses port $nodePort"

# Combine the two, trimming off whitespace
$app_url= "http://$($ip.trim())`:$nodePort/api/hello"

Write-Host $app_url

$count=0
Do {
  $res = curl $app_url -DisableKeepAlive
  Write-Host "$count $($res.Content)"
  Start-Sleep 1
  $count++
}while ($true)

