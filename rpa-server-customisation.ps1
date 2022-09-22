function Show-Menu {
    Clear-Host
    Write-Host "=========== System Customisation Options ==========="
    
    Write-Host "1: Install."
    Write-Host "2: Open Jump Desktop Connect."
    Write-Host "3: Open UI.Vision modules."
    Write-Host "4: UI.Vision Chrome extension."
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
            [system.Diagnostics.Process]::Start("chrome","https://jumpdesktop.com/connect/")
        } '3' {
            [system.Diagnostics.Process]::Start("chrome","https://ui.vision/rpa/x/download")
        } '4' {
            [system.Diagnostics.Process]::Start("chrome","https://chrome.google.com/webstore/detail/uivision-rpa/gcbalfbdmfieckjlnblleoemohcganoc")
        }
    }
    pause
 }
 until ($selection -eq 'q')