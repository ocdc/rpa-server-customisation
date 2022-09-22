# Install Scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

iwr -useb get.scoop.sh | iex
scoop install git
git config --global init.defaultBranch master

# Install software
# Main
scoop install 7zip

# Extras
scoop bucket add extras
scoop install filezilla
scoop install googlechrome
scoop install notepadplusplus
scoop install paint.net
scoop install putty
scoop install sumatrapdf
scoop install winscp

# ocdc
scoop bucket add ocdc https://github.com/ocdc/scoop-bucket
scoop install githubdesktop
scoop install qsel

# Non-Scoop actions
Write-Host "Items below will need to be manually downloaded and installed." -BackgroundColor Blue
Write-Host "Jump Desktop Connect url: https://jumpdesktop.com/connect/"
Write-Host "UI.Vision modules url: https://ui.vision/rpa/x/download"
Write-Host "UI.Vision Chrome extension url: https://chrome.google.com/webstore/detail/uivision-rpa/gcbalfbdmfieckjlnblleoemohcganoc"

# Todo > Get Qsel configuration
# Todo > Get UI.Vision backup script
# Todo > Get UI.Vision scripts
# Todo > Set up folders