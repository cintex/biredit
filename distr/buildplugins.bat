del *.dist
del *.dll
del *.exe
del *.htm
del *.ini
del *.upx
del *.zip
del changelog.txt
del doublestringplugin.txt
del license.txt
del listfolderplugin.txt
rd /S /Q lang
rd /S /Q plugins
rd /S /Q syn
copy /y ..\src\plugins\doublestringplugin.dll doublestringplugin.dll
..\utils\upx.exe doublestringplugin.dll --best --ultra-brute
copy /y ..\docs\doublestringplugin.txt doublestringplugin.txt
copy /y ..\src\plugins\listfolderplugin.dll listfolderplugin.dll
..\utils\upx.exe listfolderplugin.dll --best --ultra-brute
copy /y ..\src\plugins\listfolderplugin.ini listfolderplugin.ini
copy /y ..\docs\listfolderplugin.txt listfolderplugin.txt
..\utils\7za\7za.exe a biredit-plugins-2.0.2.62-win32.zip doublestringplugin.dll doublestringplugin.txt listfolderplugin.dll listfolderplugin.ini listfolderplugin.txt
..\utils\7za\7za.exe a biredit-doublestringplugin-0.0.2-win32.zip doublestringplugin.dll doublestringplugin.txt
..\utils\7za\7za.exe a biredit-listfolderplugin-0.0.6-win32.zip listfolderplugin.dll listfolderplugin.ini listfolderplugin.txt