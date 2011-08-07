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
md plugins
copy /y ..\src\plugins\listfolderplugin.dll plugins\listfolderplugin.dll
..\utils\upx.exe plugins\listfolderplugin.dll --best --ultra-brute
copy /y ..\src\plugins\listfolderplugin.ini plugins\listfolderplugin.ini
md syn
copy /y ..\src\syn\*.* syn\*.*
..\utils\nsis\makensis.exe installer-ansi.txt
..\utils\7za\7za.exe a biredit-2.0.2.68-win9x-portable.zip biredit.exe changelog.txt help.en.htm help.ru.htm license.txt profile.ini lang plugins syn