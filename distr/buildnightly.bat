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
copy /y ..\src\biredit.exe biredit.exe
..\utils\upx.exe biredit.exe --best -v --ultra-brute --compress-icons=0
md plugins
copy /y ..\src\plugins\listfolderplugin.dll plugins\listfolderplugin.dll
..\utils\upx.exe plugins\listfolderplugin.dll --best -v --ultra-brute
copy /y ..\src\plugins\listfolderplugin.ini plugins\listfolderplugin.ini
copy /y ..\src\plugins\doublestringplugin.dll plugins\doublestringplugin.dll
..\utils\upx.exe plugins\doublestringplugin.dll --best -v --ultra-brute
..\utils\7za\7za.exe a biredit-2.0.2.60-win32.zip biredit.exe docs\readme-2.0.2.60.txt plugins