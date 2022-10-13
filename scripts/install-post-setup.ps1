$currentUserProfilePath = $Env:USERPROFILE

git config --global credential.helper manager-core
reg import "$($currentUserProfilePath)\scoop\apps\7zip\current\install-context.reg"
reg import "$($currentUserProfilePath)\scoop\apps\notepadplusplus\current\install-context.reg"
reg import "$($currentUserProfilePath)\scoop\apps\vscode\current\install-context.reg"
reg import "$($currentUserProfilePath)\scoop\apps\vscode\current\install-associations.reg"