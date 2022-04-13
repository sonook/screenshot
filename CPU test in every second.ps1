$timer = new-timespan -Minutes 1
$clock = [diagnostics.stopwatch]::StartNew()
while ($clock.elapsed -lt $timer){
$command=Get-Process | sort CPU | select -last 10 |ft
$command
start-sleep -seconds 0.1
}
write-host "Timer end"