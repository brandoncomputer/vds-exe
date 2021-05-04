cd compile
cd compile
powershell -executionpolicy bypass -file .\compile.ps1
powershell -executionpolicy bypass -file .\release.ps1 release.ps1 ..\compile.exe -compiler -version 0.3.1.3 -iconfile ..\..\res\compile.ico -company "vds/pwsh community" -product "DialogShell Compile" -description "DialogShell Compiler" -title "compile"
cd ..
compile.exe "..\setup.ds1" "..\setup.exe" -version 0.3.1.3 -noconsole -requireadmin -sta -iconfile ..\res\cog_go.ico -company "vds/pwsh community" -product "DialogShell Designer" -description "DialogShell Designer" -title "DialogShell Designer"
.\compile.exe .\compile-gui.ds1 .\compile-gui.exe -noconsole -sta -version 0.3.1.3 -iconfile ..\res\compile.ico -company "vds/pwsh community" -product "compile-gui" -description "compile-gui" -title "compile-gui"
.\compile.exe .\DialogShell.ds1 .\DialogShell.exe -sta -version 0.3.1.3 -iconfile ..\res\terminal.ico -company "vds/pwsh community" -product "DialogShell" -description "DialogShell" -title "DialogShell"
.\compile.exe ".\Visual DialogShell.ds1" ".\Visual DialogShell.exe" -version 0.3.1.3 -iconfile ..\res\application.ico -noconsole -sta -company "vds/pwsh community" -product "Visual DialogShell" -description "Visual DialogShell" -title "Visual DialogShell"
cd ..
cd examples
..\compile\compile.exe .\vds-ide.ds1 .\vds-ide.exe -sta -version 0.3.1.3 -noconsole -iconfile ..\res\icon.ico -company "vds/pwsh community" -product "DialogShell" -description "DialogShell" -title "DialogShell"
cd ..
mkdir setup\compile
copy .\compile\*.exe .\setup\compile
copy .\compile\*.dll .\setup\compile
copy .\compile\*.config .\setup\compile
mkdir setup\examples
copy .\examples .\setup\examples
mkdir setup\examples\en-US
copy .\examples\en-US .\setup\examples\en-US
mkdir setup\elements
copy .\elements .\setup\elements
mkdir setup\res
xcopy .\res .\setup\res\ /E/H
mkdir setup\plugins
copy .\plugins .\setup\plugins
mkdir setup\wizards
copy .\wizards .\setup\wizards
copy .\license.md .\setup\license.md
copy .\vds.psm1 .\setup\compile
copy .\vds.psm1 .\setup\examples
copy .\vds.psm1 .\setup\res\7\vds.psm1

setup.exe