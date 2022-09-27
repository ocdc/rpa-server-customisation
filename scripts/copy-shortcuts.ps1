$source = "$($Env:APPDATA)\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
$destination = "$($Env:USERPROFILE)\Desktop\Applications"

robocopy $source $destination /MIR /Z /W:1 /R:3