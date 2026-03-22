@echo off
COLOR 47
set VERSION=1.0 BETA
rem 正式开始
echo.——————————————————————————————————————————————————————————
echo.欢迎使用老贼电脑课摸鱼小工具
echo.当前版本：%VERSION%%
echo.偷偷用哦，不要外传
echo.以防万一程序将会加密，需要使用找我要授权码，正式版会使用账号登陆
echo.一节课只需登录一次，重启失效
echo.如果弹出用户协议请观看
echo.本程序完全免费仅供学习交流使用，禁止用于商业用途，禁止用于非法用途
echo.禁止用于侵犯他人隐私的用途，禁止用于侵犯他人合法权益的用途，
echo.禁止用于其他违法违规的用途，否则后果自负
echo.——————————————————————————————————————————————————————————

rem 检查状态

echo.程序自检中...
echo.检查文件完整性...
 if exist %~dp0/BIN/TOOLS/ZT.bat (
    echo.信考功能： √
    ) else (
    echo.信考功能：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit 
)




 if exist %~dp0/BIN/TOOLS/dw.bat (
    echo.解除断网功能： √
    ) else (
    echo.解除断网功能：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit
)

 if exist %~dp0/BIN/TOOLS/kz.exe (
    echo.解除极域功能： √
    ) else (
    echo.解除极域功能：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit
)

echo.正在检查管理员权限...
net session >nul 2>&1
if %errorlevel% == 0 (
    set adm=y) else (
        set adm=n)
timeout /t 4 >null
del %~dp0\null




if %adm%==y (
    echo."管理员权限： √") else (
    echo.管理员权限：× 
    echo.权限错误，可能功能无法正常使用)

echo.正在检查更新...
timeout /t 3 >null
del %~dp0\null
echo.跳过更新检查，直接进入主界面(因为还没做 ^///^)
echo.正在检查授权...
timeout /t 4 >null
del %~dp0\null

if exist "%appdata%\ZEI\key" (
    set /p dkey=<"%appdata%\ZEI\key"
    Goto jiance
) else (
    echo.授权状态：×，文件未找到，请授权
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit
)




@echo off
timeout /t 7 >null
del %~dp0\null



:start
cls
echo.请选择功能：
echo.1.信考做题
echo.2.解除断网
echo.3.关闭极域
echo.4.恢复极域
echo.5.禁用极域非法窗口，脱离屏幕控制
echo.6.退出程序
set /p fountion=请选择功能：

if "%fountion%"=="1" (
    echo.启动做题程序
    timeout /t 4 >null
    del %~dp0\null
    goto zuoti
) else if "%fountion%"=="2" (
    echo.正在解除断网...
    timeout /t 4 >null
    del %~dp0\null
    goto duangwang
) else if "%fountion%"=="3" (
    echo.正在关闭极域...
    timeout /t 4 >null
    del %~dp0\null
    goto killjy
) else if "%fountion%"=="4" (
    echo.正在恢复极域...
    timeout /t 4 >null
    del %~dp0\null
 goto startjy
) else if "%fountion%"=="5" (
    echo.正在禁用极域非法窗口
    timeout /t 4 >null
    del %~dp0\null
    goto jckz
) else if "%fountion%"=="6" (
    echo.正在退出程序...
    timeout /t 4 >null
    del %~dp0\null
    exit
) else (
    echo.输入错误，请重新选择功能
    timeout /t 4 >null
    del %~dp0\null
    goto start
)














:zuoti
call %~dp0/BIN/TOOLS/ZT.bat
 goto start





















:killjy
taskkill /f /im “StudentMain.exe”
echo.极域已关闭，正在返回主界面...
timeout /t 4 >null
del %~dp0\null
goto start




:startjy
echo.正在恢复极域...
start "C:\Program Files (x86)\Mythware\极域电子教室软件 v4.0 2015 豪华版\StudentMain.exe""
echo.极域已恢复，正在返回主界面...
timeout /t 4 >null
goto start






:jiance
if "%dkey%"=="LAOZEINIUBI666" (
    echo.授权状态： √
    echo.正在进入主界面...
    timeout /t 4 >null
    del %appdata%\ZEI\key
    goto start
) else (
    echo.授权状态：×，请授权
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit
)



:duangwang
call "%~dp0/BIN/TOOLS/dw.bat"
%dw1%
%dw2%
%dw3%
%dw4%
%dw5%
%dw6%
goto start













:jckz
start %~dp0/BIN/TOOLS/kz.exe -break
echo.已经脱离屏幕控制...
timeout /t 4 >null
goto start