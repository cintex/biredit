del *.dist *.exe *.htm *.ini *.upx *.zip changelog.txt license.txt
rd /S /Q lang
rd /S /Q syn
copy /y ..\src\biredit.exe biredit.exe
..\utils\upx.exe biredit.exe --best --ultra-brute --compress-icons=0
md syn
copy /y ..\src\syn\dwscript.ini syn\dwscript.ini
copy /y ..\src\syn\hp48.ini syn\hp48.ini
..\utils\7za\7za.exe a biredit-2.2.0.112-win32.zip biredit.exe syn