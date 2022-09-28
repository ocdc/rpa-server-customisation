function Show-Menu {
    Clear-Host
    Write-Host "=========== System Customisation Options ==========="
    
    Write-Host "1: Install."
    Write-Host "2: Create desktop shortcuts."
    Write-Host "3: Manual installers."
    Write-Host "4: Manual setup tasks."
	Write-Host "5: Update manifests."
    Write-Host "Q: Press 'Q' to quit."
}

do
 {
    Show-Menu
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
        '1' {
            &"$($PSScriptRoot)\scripts\install.ps1"
        } '2' {
            &"$($PSScriptRoot)\scripts\copy-shortcuts.ps1"
        } '3' {
            Write-Host "Items below will need to be manually downloaded and installed." -BackgroundColor Blue
            Write-Host "Jump Desktop Connect url: https://jumpdesktop.com/connect/"
            Write-Host "UI.Vision modules url: https://ui.vision/rpa/x/download"
            Write-Host "UI.Vision Chrome extension url: https://chrome.google.com/webstore/detail/uivision-rpa/gcbalfbdmfieckjlnblleoemohcganoc"
        } '4' {
            Write-Host "Default GIT path should be C:\Users\$($Env:USERPROFILE)\GitHub"
            Write-Host "Default UI.Vision path should be C:\Users\$($Env:USERPROFILE)\GitHub\uivision"
        } '5' {
			&"$($PSScriptRoot)\scripts\scoop-update-manifests.ps1"
		}
    }
    pause
 }
 until ($selection -eq 'q')