$groups = (
    "Enterprise Admins",
    "Schema Admins",
    "Account Operators",
    "Backup Operators"
)

foreach ($group in $groups) {
    Write-Host "Members of: $group"
    Get-ADGroupMember -Identity $group |
        Select-Object Name, SamAccountName
}