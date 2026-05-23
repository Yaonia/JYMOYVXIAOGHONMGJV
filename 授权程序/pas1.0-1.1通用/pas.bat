@echo off
setlocal enabledelayedexpansion

for /f "tokens=1-3 delims=:." %%a in ("%time%") do (
    set "hour_raw=%%a"
    set "minute_raw=%%b"
)

set "hour_raw=%hour_raw: =%"
set "minute_raw=%minute_raw: =%"

set "hour="
set "minute="
for /f "delims=0123456789" %%i in ("%hour_raw%") do (
    set "hour=!hour_raw:am=!"
    set "hour=!hour:pm=!"
    set "hour=!hour:上午=!"
    set "hour=!hour:下午=!"
)
set "minute=%minute_raw%"
set "minute=!minute:am=!"
set "minute=!minute:pm=!"
set "minute=!minute:上午=!"
set "minute=!minute:下午=!"

set /a "hour=1%hour% - 100" 2>nul
set /a "minute=1%minute% - 100" 2>nul

:calc_password
set /a "password_minute=(minute + 2) %% 60"

echo %minute%

:ask
set "input="
set /p "input=请输入密码（数字）: "

if not "%input%"=="%password_minute%" (
    echo 密码错误，请重试。
    goto ask
)

echo 密码正确，继续执行...
rem 在这里放您的实际命令
set "target_dir=%appdata%\ZEI"
if not exist "%target_dir%" mkdir "%target_dir%"
echo LAOZEI0224> "%target_dir%\key"
echo 授权成功：一次性授权
echo ZEI0224> "%target_dir%\TKKEY"
timeout /t 4 >null
