#. $env:USERPROFILE\.config\windows_terminal\powershell\user_profile.ps1

Set-Alias unzip Expand-Archive
Set-Alias rn Rename-Item
Set-Alias shutdown Stop-Computer
Set-Alias reboot Restart-Computer
Set-Alias list Get-InstalledModule

# Styling
$PSStyle.FileInfo.Directory = "`e[38;2;255;255;255m"

# Oh-My-Posh theme Initialization
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config 'C:\Users\dario\Documents\PowerShell\dario_nord_theme.json' --print) -join "`n"))

# Git wrapper function for git bare repositories

function windots () {
    git --git-dir="$HOME\.config\" --work-tree="$HOME" @Args
}