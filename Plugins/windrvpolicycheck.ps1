$evalPolicy = (citool -lp -json | ConvertFrom-Json).Policies | Where-Object { $_.PolicyID -eq "784c4414-79f4-4c32-a6a5-f0fb42a51d0d" }

$enforcedPolicy = (citool -lp -json | ConvertFrom-Json).Policies | Where-Object { $_.PolicyID -eq "8F9CB695-5D48-48D6-A329-7202B44607E3" }

if ($enforcedPolicy.IsEnforced -and $enforcedPolicy.IsAuthorized) { Write-Host "STATUS_ENFORCED" -ForegroundColor Green }

elseif($evalPolicy.IsEnforced -and $evalPolicy.IsAuthorized) { Write-Host "STATUS_EVAL" -ForegroundColor Green }

else { Write-Host "STATUS_NOT_AVAILABLE" -ForegroundColor Red }