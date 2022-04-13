 Set-Location .\testdirectory
 $list = Get-ChildItem
 Get-ChildItem | ForEach-Object{Rename-Item $_ -NewName ("$list.jpg" -f $nr++)}
 #1,2,3 | ForEach-Object{ write-host $_ }

 Get-Command -Noun Item