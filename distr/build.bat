copy /y "..\src\biredit.exe" biredit.exe
..\utils\upx.exe biredit.exe --best -v --ultra-brute --compress-icons=0
..\utils\nsis\makensis.exe installer.txt
del biredit.exe
pause