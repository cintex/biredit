!packhdr setup.upx '"${NSISDIR}\..\upx.exe" --best -q -v --ultra-brute setup.upx'

SetCompressor /solid lzma
SetCompress auto
SetDatablockOptimize on

!include "Sections.nsh"

AllowRootDirInstall false
AutoCloseWindow false
AllowSkipFiles off
CRCCheck on
RequestExecutionLevel admin
SetOverwrite on
ShowInstDetails show
ShowUninstDetails show
SilentInstall normal
SilentUnInstall normal
XPStyle on

LoadLanguageFile "${NSISDIR}\langs\english.txt"
LoadLanguageFile "${NSISDIR}\langs\russian.txt"