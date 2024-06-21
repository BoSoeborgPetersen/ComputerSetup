# Path
Set-Location C:\git

# Oh My Posh
oh-my-posh --init --shell pwsh --config ~\bsobo.omp.json | Invoke-Expression
Import-Module posh-git
Import-Module Terminal-Icons

# Aliases
Set-Alias k kubectl -Scope Global
Set-Alias h helm -Scope Global
Set-Alias tf terraform -Scope Global

# Helper functions
function global:.. { Set-Location .. }
function global:... { Set-Location ../.. }
function global:.... { Set-Location ../../.. }
function global:..... { Set-Location ../../../.. }

# Autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete