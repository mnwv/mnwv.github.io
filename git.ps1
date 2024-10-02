git add -A
#git commit --allow-empty-message -m ""
$date = Get-Date -Format g
git commit -m $date
$branch = git branch | Select-String '^\* ' | ForEach-Object { $_.Line -replace '^\* ', '' }
Write-Output $branch
git push origin $branch