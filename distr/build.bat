del *.dist
del *.exe
del *.htm
del *.ini
del *.upx
del *.zip
del changelog.txt
del license.txt
rd /S /Q lang
rd /S /Q syn
copy /y ..\src\biredit.exe biredit.exe
..\utils\upx.exe biredit.exe --best --ultra-brute --compress-icons=0
copy /y ..\docs\changelog.txt changelog.txt
copy /y ..\docs\help.en.htm help.en.htm
copy /y ..\docs\help.ru.htm help.ru.htm
copy /y ..\docs\license.txt license.txt
copy /y ..\src\profile.ini profile.ini
copy /y ..\src\profile.ini.dist profile.ini.dist
md lang
copy /y ..\src\lang\english.lng lang\english.lng
copy /y ..\src\lang\russian.lng lang\russian.lng
md syn
copy /y ..\src\syn\*.* syn\*.*
..\utils\nsis\makensis.exe installer.txt
..\utils\7za\7za.exe a biredit-2.1.0.91-win32-portable.zip biredit.exe changelog.txt help.en.htm help.ru.htm license.txt profile.ini lang syn