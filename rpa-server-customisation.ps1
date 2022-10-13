function Show-Menu {
    Clear-Host
    Write-Host "=========== System Customisation Options ==========="
    
    Write-Host "1: Install."
    Write-Host "2: Post install tasks."
    Write-Host "3: Create desktop shortcuts."
    Write-Host "4: Manual installers."
    Write-Host "5: Manual setup tasks."
    Write-Host "6: Update manifests."
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
            &"$($PSScriptRoot)\scripts\install-post-setup.ps1"
        } '3' {
            &"$($PSScriptRoot)\scripts\copy-shortcuts.ps1"
        } '4' {
            Write-Host "Items below will need to be manually downloaded and installed." -BackgroundColor Blue
	      Write-Host "Chrome url: https://www.google.com/intl/en/chrome/?standalone=1"
            Write-Host "Jump Desktop Connect url: https://jumpdesktop.com/connect/"
            Write-Host "UI.Vision modules url: https://ui.vision/rpa/x/download"
            Write-Host "UI.Vision Chrome extension url: https://chrome.google.com/webstore/detail/uivision-rpa/gcbalfbdmfieckjlnblleoemohcganoc"
            Write-Host "Open all URLs in default browser..." -BackgroundColor Red
            Read-Host -Prompt "Press enter to continue or CTRL+C to quit"
	      Start-Process "https://www.google.com/intl/en/chrome/?standalone=1"
            Start-Process "https://jumpdesktop.com/connect/"
            Start-Process "https://ui.vision/rpa/x/download"
            Start-Process "https://chrome.google.com/webstore/detail/uivision-rpa/gcbalfbdmfieckjlnblleoemohcganoc"
        } '5' {
            Write-Host "Default GIT path should be C:\Users\$($Env:USERPROFILE)\GitHub"
            Write-Host "Default UI.Vision path should be C:\Users\$($Env:USERPROFILE)\GitHub\uivision"
        } '6' {
            &"$($PSScriptRoot)\scripts\scoop-update-manifests.ps1"
	}
    }
    pause
 }
 until ($selection -eq 'q')
