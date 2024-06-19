# List of remote computer names
$computerNames = "10.10.1.194"

# Loop through each computer and restart it
foreach ($computerName in $computerNames) {
    Restart-Computer -10.10.1.194 $computerName -Force
}
