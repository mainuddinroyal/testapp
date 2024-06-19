# List of remote computer names
$computerNames = "10.10.1.194"

# Loop through each computer and restart it
foreach ($computerName in $computerNames) {
    Write-Host "Restarting $computerName..."
    try {
        Restart-Computer -ComputerName $computerName -Force -ErrorAction Stop
        Write-Host "$computerName restarted successfully."
    } catch {
        Write-Host "Failed to restart $computerName. Error: $_"
    }
}
