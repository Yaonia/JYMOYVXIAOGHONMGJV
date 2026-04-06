@echo off
color 97
goto etestmode
:part1
del %~dp0\null
set VERSION=1.2 BETA
set "ZM=%USERPROFILE%\Desktop"
rem 正式开始
echo.——————————————————————————————————————————————————————————
echo.欢迎使用老贼电脑课摸鱼小工具
echo.当前版本：%VERSION%%
echo.github地址：https://github.com/Yaonia/JYMOYVXIAOGHONMGJV
echo.偷偷用哦，不要外传
echo.以防万一程序将会加密，需要使用找我要授权码，正式版会使用账号登陆
echo.一节课只需登录一次，重启失效
echo.如果弹出用户协议请观看
echo.本程序完全免费仅供学习交流使用，禁止用于商业用途，禁止用于非法用途
echo.禁止用于侵犯他人隐私的用途，禁止用于侵犯他人合法权益的用途，
echo.禁止用于其他违法违规的用途，否则后果自负
echo.——————————————————————————————————————————————————————————

start https://github.com/Yaonia/JYMOYVXIAOGHONMGJV

rem 检查状态
echo.程序自检中...
echo.检查文件完整性...
 if exist %~dp0\BIN\TOOLS\ZT1.bat (
     echo.信考工具1： √
    ) else (
    echo.信考工具1：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit 
)

if exist %~dp0\BIN\TOOLS\ZT2.bat (
    echo.信考工具2： √
    ) else (
    echo.信考工具2：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit 
)

 if exist %~dp0\BIN\TOOLS\ZT2.bat if exist %~dp0\BIN\TOOLS\ZT3.bat (
    echo.信考工具3： √
    ) else (
    echo.信考工具3：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit 
)


 if exist %~dp0\BIN\TOOLS\dw.bat (
    echo.解除断网功能： √
    ) else (
    echo.解除断网功能：×，文件未找到
    echo.程序即将退出
    timeout /t 5 >null
    del %~dp0\null
    exit
)

 if exist %~dp0\BIN\TOOLS\kz.exe (
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




timeout /t 7 >null
del %~dp0\null

:logo
call "%~dp0\BIN\TOOLS\logo.bat"
goto fcs



:start
cls
COLOR 47
echo.请选择功能：
echo.1.信考做题
echo.2.解除断网
echo.3.关闭极域
echo.4.恢复极域
echo.5.禁用极域非法窗口，脱离屏幕控制
echo.6.退出程序
set /p fountion=请选择功能：

if "%fountion%"=="1" (
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
    goto jcpmkz
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
cls
echo.感谢龙头小朋友提供的BUG，已修复，题库已加密
set ZTKEY=%appdata%\ZEI\

set /p TKKEY=<"%appdata%\ZEI\TKKEY"

echo.解密题库
echo.请不要中断解密过程，否则做题会报错
if not exist "%appdata%\ZEITK" mkdir "%appdata%\ZEITK"
%~dp0\BIN\TOOLS\7z x %~dp0\BIN\FUSHU -p%TKKEY% -o"%appdata%\ZEITK" -bso0 -aoa
del "%appdata%\ZEI\TKKEY" 2>null

Set /P TKversion=<"%appdata%\ZEITK\TKversion"
echo.题库版本:%TKversion%
echo.目前收录题库：
echo.1.PYTHON操作1
echo.2.PYTHON操作2
echo.3.PYTHON操作3
set /p ZTXZ=请选择要做的题目：
if "%ZTXZ%"=="1" (
    echo.启动PYTHON操作1
    timeout /t 4 >null
       GOTO ZT1C
) else if "%ZTXZ%"=="2" (
    echo.启动PYTHON操作2
    timeout /t 4 >null
       GOTO ZT2C
) else if "%ZTXZ%"=="3" (
    echo.启动PYTHON操作3
    timeout /t 4 >null
       GOTO ZT3C
    exit    
) else (
    echo.输入错误，请重新选择题目
    timeout /t 4 >null
    goto zuoti
    )
    goto start





















:killjy
taskkill /f /im "StudentMain.exe"
echo.极域已关闭，正在返回主界面...
timeout /t 4 >null
del %~dp0\null
goto start




:startjy
echo.正在恢复极域...
start "C:\Program Files (x86)\Mythware\极域电子教室软件 v4.0 2015 豪华版\StudentMain.exe"
start "C:\Program Files (x86)\Mythware\极域电子教室软件 v4.0 2015 豪华版\GATESRV.exe"
echo.极域已恢复，正在返回主界面...
timeout /t 4 >null
goto start






:jiance
if "%dkey%"=="LAOZEI0224" (
    echo.授权状态： √
    timeout /t 4 >null
    del %appdata%\ZEI\key
    goto logo
) else (
    cls
    echo.嗯哼，还想破解，吃大便去吧
    call "%~dp0\BIN\TOOLS\Uninstall.bat"
    timeout /t 5 >null
    del %~dp0\null
    exit
)



:duangwang
call "%~dp0\BIN\TOOLS\dw.bat"
%dw1%
%dw2%
%dw3%
%dw4%
%dw5%
%dw6%
goto start





:ZT1
echo LAOZEINIUBI6661> "%ZTKEY%\ZT1KEY"
timeout /t 2 >null
       del "%~dp0\BIN\TOOLS\JS1"
       echo.初始化计数器
       timeout /t 20 >null
       echo.启动PYTHON操作1
       call "%~dp0\BIN\TOOLS\ZT1.bat"
    del %~dp0\null




:ZT2
echo LAOZEINIUBI6662> "%ZTKEY%\ZT2KEY"
timeout /t 2 >null
       del "%~dp0\BIN\TOOLS\JS2"
       call "%~dp0\BIN\TOOLS\ZT2.bat"
    del %~dp0\null



:ZT3
       echo LAOZEINIUBI6663> "%ZTKEY%\ZT3KEY">null
       timeout /t 2 >null
       del "%~dp0\BIN\TOOLS\JS3"
    call "%~dp0\BIN\TOOLS\ZT3.bat"
    timeout /t 4 >null
    del %~dp0\null



























:jcpmkz
echo.该部分独自开发过于麻烦，功能使用第三方工具完成
echo.工具来自github 项目地址:https://github.com/RhmpzYYX/JiYuKiller
echo.程序启动按钮关闭弹出的程序口即可，程序会在后台自动运行
echo.如果你看完了可以选择按任意键或者等待8S自动下一步
timeout /t 8 >null
start %~dp0\BIN\TOOLS\jcpmkz\JiYuKiller.exe
echo.退回主页
timeout /t 2 >null
goto start









:ZT1C
set "target=%~dp0\BIN\TOOLS\ZT1.bat"
set "shortcut=%UserProfile%\Desktop\ZT1.lnk"

set "vbs=%temp%\tmp.vbs"
(
echo Set oWS = WScript.CreateObject("WScript.Shell"^)
echo Set oLink = oWS.CreateShortcut("%shortcut%"^)
echo oLink.TargetPath = "%target%"
echo oLink.Save
) > "%vbs%"
cscript //nologo "%vbs%"
del "%vbs%"
if exist "%shortcut%" goto ZT1





:ZT2C
set "target=%~dp0\BIN\TOOLS\ZT2.bat"
set "shortcut=%UserProfile%\Desktop\ZT2.lnk"
 
set "vbs=%temp%\tmp.vbs"
(
echo Set oWS = WScript.CreateObject("WScript.Shell"^)
echo Set oLink = oWS.CreateShortcut("%shortcut%"^)
echo oLink.TargetPath = "%target%"
echo oLink.Save
) > "%vbs%"
cscript //nologo "%temp%\tmp.vbs" 
if exist "%shortcut%" goto ZT2















:fcs
cls
color cB
echo.正在上线防CS模块
timeout /t 2 >null

powercfg -setacvalueindex scheme_current sub_buttons pbuttonaction 0
powercfg -setactive scheme_current

echo.防cs已上线
echo.查看更新日志，关闭后继续

goto UpdateLog







:UpdateLog
xcopy /H /Y "%~dp0\BIN\TOOLS\Update Log" "%appdata%\ZEI\"> null
notepad "%appdata%\ZEI\Update Log"
del %appdata%\ZEI\Update Log
goto start


















:etestmode
if exist "%appdata%\ZEI\Testmodekey" (
    set /p Testmodekey=<"%appdata%\ZEI\Testmodekey"
    Goto dTestmode
) else (
goto part1
)






:dTestmode
if "%Testmodekey%"=="TESTZEI" (
    goto testmode
) else (
    goto part1
)






:testmode
  echo.调试模式，欢迎管理员
  timeout /t 4 >null
  @echo on
  goto start
 