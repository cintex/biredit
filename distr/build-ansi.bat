del *.exe
del *.dll
del *.upx
copy /y "..\src\biredit.exe" biredit.exe
..\utils\upx.exe biredit.exe --best -v --ultra-brute --compress-icons=0
copy /y "..\src\plugins\bireditlistfolderplugin.dll" bireditlistfolderplugin.dll
..\utils\upx.exe bireditlistfolderplugin.dll --best -v --ultra-brute
..\utils\nsisa\makensis.exe installer-ansi.txt
del biredit.exe
del bireditlistfolderplugin.dll