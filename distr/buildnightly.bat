del *.dist *.exe *.htm *.ini *.upx *.zip changelog.txt license.txt
rd /S /Q lang
rd /S /Q syn
copy /y ..\src\biredit.exe biredit.exe
..\utils\upx.exe biredit.exe --best --ultra-brute --compress-icons=0
md lang
copy /y ..\src\lang\english.lng lang\english.lng
copy /y ..\src\lang\russian.lng lang\russian.lng
..\utils\7za\7za.exe a biredit-2.1.0.90-win32.zip biredit.exe lang