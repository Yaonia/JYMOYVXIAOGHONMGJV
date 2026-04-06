@echo off
set "main=%APPDATA%\ZEIMAIN\BIN\TOOLS\Uninstall.bat"
set "mainshortcut=%USERPROFILE%\Desktop\об©н.lnk"

(
echo Set WshShell = CreateObject("WScript.Shell"^)
echo Set oShellLink = WshShell.CreateShortcut("%mainshortcut%"^)
echo oShellLink.TargetPath = "%main%"
echo oShellLink.Save
) > "%temp%\make_shortcut.vbs"
cscript //nologo "%temp%\make_shortcut.vbs"
del "%temp%\make_shortcut.vbs"