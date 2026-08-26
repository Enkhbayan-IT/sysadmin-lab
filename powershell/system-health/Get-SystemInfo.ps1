# ***************************************
# Script Name:Get-Systemifo.ps1
# Description:xxxxxx
# Author: Enkhbayan Altangerel
# Date: 19/08/2026
# ***************************************
Write-Host "=================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Script begins" -ForegroundColor Green
# --Variables--
$computerName = $env:COMPUTERNAME
$currentUser = $env:USERNAME
$today = Get-Date -Format "yyyy/MM/dd HH:mm"
$os = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object Caption, LastBootUpTime, TotalVisibleMemorySize
$drives = Get-PSDrive | Where-Object {$_.Provider -like "*FileSystem*"} | Select-Object Name,
        @{Name = "usedGB"; Expression={[math]::Round($_.Used / 1GB, 2)}},
        @{Name = "freeGB"; Expression={[math]::Round($_.Free / 1GB, 2)}}
$stoppedServices = Get-Service | Where-Object {$_.Status -eq "Stopped"} | Select-Object Name, Status
$runningServices = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name, Status

$totalMemoryGB = [System.Math]::Round($os.TotalVisibleMemorySize /1024 /1024 ,2)


# --Display the Information--
Write-Host "Server Name: $computerName" -ForegroundColor White
Write-Host "Reported by: $currentUser" -ForegroundColor White
Write-Host "Report Time: $today" -ForegroundColor White
Write-Host "Operating System : $($os.Caption)" -ForegroundColor Blue
Write-Host "Last Rebooted : $($os.LastBootUpTime)" -ForegroundColor Blue
Write-Host "Total Memory : $($totalMemoryGB) GB" -ForegroundColor Green
$drives | Format-Table -AutoSize
$stoppedServices | Format-Table -AutoSize
$runningServices | Format-Table -AutoSize

foreach ($drive in $drives)
{
    if ($drive.freeGB -lt 10) {
        Write-Host "Drive $($drive.Name) Free Space: $($drive.freeGB) GB ***Low Disk Space***" -ForegroundColor Red
    }
    else {
        Write-Host "Drive $($drive.Name) Free Space: $($drive.freeGB) GB" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "=================================================" -ForegroundColor Cyan
Write-Host "Report Generated :$today " -ForegroundColor Cyan
Write-Host "Run on : $computerName" -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Script completed succesfully" -ForegroundColor Green
