$currentUser = $Env:USERNAME

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Write-Host "Logged in user: $($currentUser)" -BackgroundColor Blue

# Install Scoop
If ($currentUser -eq "Administrator")
{
    Write-Host "Logged on as administrator, -RunAsAdmin parameter will be used..." -BackgroundColor Red
    Read-Host -Prompt "Press enter to continue or CTRL+C to quit"

    iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
} else {
    Write-Host "Logged on as standard user, normal install will be performed..." -BackgroundColor DarkGreen
    Read-Host -Prompt "Press enter to continue or CTRL+C to quit"

    iwr -useb get.scoop.sh | iex
}

# Install software
# Git and config
scoop install git
git config --global init.defaultBranch master

# Main
scoop install 7zip

# Extras
scoop bucket add extras
scoop install filezilla
scoop install notepadplusplus
scoop install paint.net
scoop install putty
scoop install sumatrapdf
scoop install vscode
scoop install winscp

# ocdc
scoop bucket add ocdc https://github.com/ocdc/scoop-bucket
scoop install githubdesktop
