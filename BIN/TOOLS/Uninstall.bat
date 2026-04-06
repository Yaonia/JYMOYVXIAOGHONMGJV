@echo off
del %USERPROFILE%\Desktop\ZT1.lnk 2>nul
del %USERPROFILE%\Desktop\ZT2.lnk 2>nul
del %USERPROFILE%\Desktop\ZT3.lnk 2>nul
del %USERPROFILE%\Desktop\主程序.lnk 2>nul
del %USERPROFILE%\Desktop\下课.lnk 2>nul
rd /s /q "%APPDATA%\ZEIMAIN" 2>nul
echo.已卸载
timeout /t 3 >null
exit
