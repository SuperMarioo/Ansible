#!powershell
# WANT_JSON
# POWERSHELL_COMMON
$data = Get-Host | Select Version
$result = New-Object psobject @{
get_host_version = $data
changed = $false
};
Exit-Json $result;