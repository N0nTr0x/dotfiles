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

# Funktionen definieren
function Start-WTA {
    Start-Process -FilePath wt.exe -verb RunAs
}

function Use-Winget {
    param(
        [string]$PackageName
    )
    winget install $PackageName -s winget
}


# ------------------------------------------------------------

# Aliase festlegen
Set-Alias -Name ping -Value Test-Connection
Set-Alias -Name wta -Value Start-WTA
Set-Alias -Name dns -Value Resolve-DnsName
Set-Alias -Name wp -Value Use-Winget

# ------------------------------------------------------------

# Clear Screen
Clear-Host
#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

Import-Module "C:\Users\leon\AppData\Local\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756
