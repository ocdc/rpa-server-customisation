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