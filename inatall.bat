@echo off
color 79
net session >nul 2>&1
if %errorlevel% equ 0 (
  goto install
) else (
    echo 无管理员权限，请右键以管理员身份运行
    color 4f
    timeout /t 3
)

:install
echo.开始安装
7z x main -o%APPDATA% -aoa
call mainIN.bat
call ININ.bat
echo.安装完成
color 9a
timeout /t 3
exit

