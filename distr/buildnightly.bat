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
..\utils\7za\7za.exe a biredit-2.0.2.63-win32.zip biredit.exe