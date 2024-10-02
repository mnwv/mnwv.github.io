git add -A
#git commit --allow-empty-message -m ""
git commit -m Get-Date
$branch = git branch | Select-String '^\* ' | ForEach-Object { $_.Line -replace '^\* ', '' }
Write-Output $branch
git push origin $branch