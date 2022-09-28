cd $Env:USERPROFILE\scoop\buckets\ocdc\bucket
..\..\..\apps\scoop\current\bin\checkver.ps1 -dir ./ * -u

git commit -m "Updated apps"
git push