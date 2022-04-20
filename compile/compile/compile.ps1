Remove-Item -path "release.ps1" -force
$ctf1 = Get-Content -Path .\1 -Encoding UTF8 -ErrorAction SilentlyContinue
$ctf2 = Get-Content -Path ..\..\vds.psm1 -Encoding UTF8 -ErrorAction SilentlyContinue
$ctf3 = Get-Content -Path .\2 -Encoding UTF8 -ErrorAction SilentlyContinue
Add-Content "release.ps1" $ctf1
Add-Content "release.ps1" $ctf2
Add-Content "release.ps1" $ctf3