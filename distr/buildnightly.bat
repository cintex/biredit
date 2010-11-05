del *.exe
del *.upx
del *.zip
copy /y ..\src\biredit.exe biredit.exe
..\utils\upx.exe biredit.exe --best -v --ultra-brute --compress-icons=0
..\utils\7za\7za.exe a biredit-2.0.1.51-win32.zip biredit.exe