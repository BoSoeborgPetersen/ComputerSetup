# Allow external scripts to run
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force
# Disable UAC (TODO: Test, does not seem to work, ironically blocked by UAC)
Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0
# Update Windows (TODO: Test)
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate
# Setup WSL2
wsl --install
# Install Apps with WinGet
## Browser
winget install -e --id Mozilla.Firefox
winget install -e --id Brave.Brave
winget install -e --id VivaldiTechnologies.Vivaldi
## Git
winget install -e --id Git.Git
winget install -e --id Axosoft.GitKraken
winget install -e --id GitHub.GitHubDesktop # Private
## Shell
winget install -e --id Microsoft.PowerShell
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id JanDeDobbeleer.OhMyPosh
## CLI
winget install -e --id Kubernetes.kubectl
winget install -e --id ahmetb.kubectx
winget install -e --id ahmetb.kubens
winget install -e --id Microsoft.AzureCLI
winget install -e --id Helm.Helm
winget install -e --id jqlang.jq
winget install -e --id Microsoft.NuGet
## Media
winget install -e --id CodecGuide.K-LiteCodecPack.Full
## Chat
winget install --name 'Microsoft Teams classic'
winget install -e --id SlackTechnologies.Slack
winget install -e --id Telegram.TelegramDesktop # Private
## Editors
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Microsoft.VisualStudio.2022.Community # Private
winget install -e --id Microsoft.VisualStudio.2022.Professional # Work
## Misc
winget install -e --id Ghisler.TotalCommander
winget install -e --id Docker.DockerDesktop
winget install -e --id HTTPie.HTTPie
winget install -e --id Microsoft.Azure.StorageExplorer
winget install -e --id Microsoft.PowerToys
winget install -e --name 'NuGet Package Explorer' --accept-package-agreements
## Mess
winget install -e --id Valve.Steam # Private
# winget install -e --id Spotify.Spotify - Maybe switch to this from Store version # Only- a problem on Private
winget install -e --id WinMerge.WinMerge
# Install Windows Store Apps with WinGet # Does not work on work laptop
winget install -e --name 'Spotify - Music and Podcasts' --accept-package-agreements # Private
winget install -e --name 'AVG AntiVirus Free' --accept-package-agreements # Private
# Install PowerShell modules
Install-Module -Name posh-git
Install-Module -Name Terminal-Icons -Repository PSGallery
# Remove preinstalled Windows things
winget uninstall Microsoft.GamingApp_8wekyb3d8bbwe
winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe
winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe
winget uninstall MicrosoftTeams_8wekyb3d8bbwe
# Missing
# Httpie (HTTPie.HTTPie is GUI, not CLI)
# Stern
### TODO
# Install all fonts in https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
# Windows Terminal: Create link to settings.json in OneDrive
New-Item -ItemType SymbolicLink -Path "settings.json" -Target "c:\Users\bo soborg\OneDrive - 3Shape A S\Laptop_Backup\windows-terminal-settings.json" # Work
### Try out
# Krew (k8s plugin manager)
### NEW
# GoLang
# Less