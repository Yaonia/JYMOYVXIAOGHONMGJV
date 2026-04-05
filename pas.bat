@echo off
setlocal enabledelayedexpansion

rem 获取当前时间的分钟部分，并计算密码 = 分钟 + 1 (模60)
rem 返回值在变量 minute 和 password_minute 中

:get_current_minute
rem 首先尝试使用 wmic 获取标准时间
set "minute="
for /f "skip=1 tokens=*" %%a in ('wmic os get localtime 2^>nul') do (
    set "datetime=%%a"
    rem 去掉可能的回车符
    set "datetime=!datetime: =!"
    if defined datetime (
        set "hour=!datetime:~8,2!"
        set "minute=!datetime:~10,2!"
        rem 去除前导零（用于计算）
        set /a "hour=1!hour!-100" 2>nul
        set /a "minute=1!minute!-100" 2>nul
        goto :calc_password
    )
)

rem 如果 wmic 不可用或失败，回退到 %time% 解析
echo 注意：使用备用时间获取方法，可能受区域格式影响。

for /f "tokens=1-3 delims=:." %%a in ("%time%") do (
    set "hour_raw=%%a"
    set "minute_raw=%%b"
)

set "hour_raw=%hour_raw: =%"
set "minute_raw=%minute_raw: =%"

set "hour="
set "minute="
for /f "delims=0123456789" %%i in ("%hour_raw%") do (
    rem 如果有非数字字符，我们取最后一个数字组合，但更简单：用 sed 模拟，但这里不用
    rem 我们使用另一种方式：逐个字符检查，但比较复杂。暂时假设时间格式是标准的，没有字母。
    rem 为了简单，如果变量包含字母，我们尝试去掉常见AM/PM标记（中文英文）
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

rem 检查是否成功，如果失败则提示并退出
if not defined hour (
    echo 无法获取正确的时间，请检查系统时间格式。
    exit /b 1
)

:calc_password
rem 计算密码：当前分钟数加1，60取模
set /a "password_minute=(minute + 1) %% 60"

echo 当前时间: %hour%:%minute%

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
echo LAOZEINIUBI666 > "%target_dir%\key"
echo 授权成功：%target_dir%\key
timeout /t 4 >null
