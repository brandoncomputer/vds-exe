$erpref = $ErrorActionPreference
$ErrorActionPreference = 'SilentlyContinue'
$sp = Split-Path -Parent -Path ([Environment]::GetCommandLineArgs()[0])

import-module \windows\system32\vds.dll
if ($? -eq $False)
{import-module $sp\vds.dll}

if ($? -eq $False)
{
		[System.Windows.Forms.MessageBox]::Show("Module could not be loaded.","Program will halt",'OK',64) | Out-Null 
		exit
}
$ErrorActionPreference = $erpref