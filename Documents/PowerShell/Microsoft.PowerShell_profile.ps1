# Invoke-starship
Invoke-Expression (&starship init powershell)

# ------------------------------------------------------------

# Module importieren
Import-Module Terminal-Icons
#Import-Module Posh-Git
Import-Module PSReadLine

# ------------------------------------------------------------

# PSReadLine-Optionen festlegen
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PSReadLine-Key-Handler festlegen
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# ------------------------------------------------------------

# Aliase festlegen
Set-Alias -Name ping -Value Test-Connection
Set-Alias -Name wta -Value Start-WTA
Set-Alias -Name dns -Value Resolve-DnsName

# ------------------------------------------------------------

# Funktionen definieren
function Start-WTA {
    Start-Process -FilePath wt.exe -verb RunAs
}

# ------------------------------------------------------------

# Clear Screen
Clear-Host

# Test