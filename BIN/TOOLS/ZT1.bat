@echo off
color 97
cls

SET "ZTKEYF=%appdata%\ZEI\"
if exist "%appdata%\ZEI\ZT1KEY" (
    set /p dZTKEY=<"%appdata%\ZEI\ZT1KEY"
    GOTO jiance
) else (
      echo 启动失败，未找到授权文件
      echo.请检查是否是从主程序进入，或者达到10题上限
      timeout /t 5 >null
      del %~dp0\null
      exit
)

:start

echo.这是PYTHON1的题目请确认
rem ---------- 计数器工作目录 ----------
set "gz=%~dp0"
set "syj=%gz%.."
for %%I in ("%syj%") do set "syj=%%~fI"

rem ---------- 工作目录%syj%\TIMU ----------
set "workdir=%appdata%\ZEITK\TIMU\1"
pushd "%workdir%" 2>nul || (
  echo 工作目录不存在: %workdir%
  exit /b 1
)

::计数器部分
set "JSFile=%syj%\TOOLS\JS1"
if not exist "%JSFile%" echo 0 > "%JSFile%"
set /p count=<"%JSFile%"
if not defined count set count=0
set /a count=%count%+1
echo %count% > "%JSFile%"
if %count% equ 10 (
    :: 在这里添加特定指令
    del %appdata%\ZEI\ZT1KEY 2>null
    rd /s /q %appdata%\ZEITK\TIMU 2>null
    echo.已达10题上限
    echo 0 > "%JSFile%"
)

setlocal enabledelayedexpansion

set /p num=请输入题号: 
if "%num%"=="" (
  echo 输入的题号不能为空
  popd
  exit /b 1
)else (
  echo goto start
)

:start
if "%num%"=="1" (
    goto 1
) else if "%num%"=="2" (
    goto 2
) else if "%num%"=="3" (
    goto 3
) else if "%num%"=="4" (
   goto 4
) else if "%num%"=="5" (
   goto 5
) else if "%num%"=="6" (
   goto 6
) else if "%num%"=="7" (
   goto 7
) else if "%num%"=="8" (
   goto 8
) else if "%num%"=="9" (
   goto 9
) else if "%num%"=="10" (
   goto 10
) else if "%num%"=="11" (
   goto 11
) else if "%num%"=="12" (
   goto 12
) else if "%num%"=="13" (
   goto 13
) else if "%num%"=="14" (
   goto 14
) else if "%num%"=="15" (
   goto 15
) else if "%num%"=="16" (
   goto 16
) else if "%num%"=="17" (
   goto 17
) else if "%num%"=="18" (
   goto 18
) else if "%num%"=="19" (
   goto 19
) else if "%num%"=="20" (
   goto 20
) else if "%num%"=="21" (
   goto 21
) else if "%num%"=="22" (
   goto 22
) else if "%num%"=="23" (
   goto 23
) else if "%num%"=="24" (
   goto 24
) else if "%num%"=="25" (
   goto 25
) else if "%num%"=="26" (
   goto 26
) else if "%num%"=="27" (
   goto 27
) else if "%num%"=="28" (
   goto 28
) else if "%num%"=="29" (
   goto 29
) else if "%num%"=="30" (
   goto 30
) else if "%num%"=="31" (
   goto 31
) else if "%num%"=="32" (
   goto 32
) else if "%num%"=="33" (
   goto 33
) else if "%num%"=="34" (
   goto 34
) else if "%num%"=="35" (
   goto 35
) else if "%num%"=="36" (
   goto 36
) else if "%num%"=="37" (
   goto 37
) else if "%num%"=="38" (
   goto 38
) else if "%num%"=="39" (
   goto 39
) else if "%num%"=="40" (
   goto 40
) else if "%num%"=="41" (
   goto 41
) else if "%num%"=="42" (
   goto 42
) else if "%num%"=="43" (
   goto 43
) else if "%num%"=="44" (
   goto 44
) else (
  echo 题号不能为空，第一题开始
   goto 1
)

:1
copy "%workdir%\p1.py" "C:\EXAM\Python1操作\"
echo.现在是第1题
pause
goto 2

:2
copy "%workdir%\p2.py" "C:\EXAM\Python1操作\"
echo.现在是第2题
pause
goto 3

:3
copy "%workdir%\p3.py" "C:\EXAM\Python1操作\"
echo.现在是第3题
pause
goto 4

:4
copy "%workdir%\p4.py" "C:\EXAM\Python1操作\"
echo.现在是第4题
pause
goto 5

:5
copy "%workdir%\p5.py" "C:\EXAM\Python1操作\"
echo.现在是第5题
pause
goto 6

:6
copy "%workdir%\p6.py" "C:\EXAM\Python1操作\"
echo.现在是第6题
pause
goto 7

:7
copy "%workdir%\p7.py" "C:\EXAM\Python1操作\"
echo.现在是第7题
pause
goto 8

:8
copy "%workdir%\p8.py" "C:\EXAM\Python1操作\"
echo.现在是第8题
pause
goto 9

:9
copy "%workdir%\p9.py" "C:\EXAM\Python1操作\"
echo.现在是第9题
pause
goto 10

:10
copy "%workdir%\p10.py" "C:\EXAM\Python1操作\"
echo.现在是第10题
pause
goto 11

:11
copy "%workdir%\p11.py" "C:\EXAM\Python1操作\"
echo.现在是第11题
pause
goto 12

:12
copy "%workdir%\p12.py" "C:\EXAM\Python1操作\"
echo.现在是第12题
pause
goto 13

:13
copy "%workdir%\p13.py" "C:\EXAM\Python1操作\"
echo.现在是第13题
pause
goto 14

:14
copy "%workdir%\p14.py" "C:\EXAM\Python1操作\"
echo.现在是第14题
pause
goto 15

:15
copy "%workdir%\p15.py" "C:\EXAM\Python1操作\"
echo.现在是第15题
pause
goto 16

:16
copy "%workdir%\p16.py" "C:\EXAM\Python1操作\"
echo.现在是第16题
pause
goto 17

:17
copy "%workdir%\p17.py" "C:\EXAM\Python1操作\"
echo.现在是第17题
pause
goto 18

:18
copy "%workdir%\p18.py" "C:\EXAM\Python1操作\"
echo.现在是第18题
pause
goto 19

:19
copy "%workdir%\p19.py" "C:\EXAM\Python1操作\"
echo.现在是第19题
pause
goto 20

:20
copy "%workdir%\p20.py" "C:\EXAM\Python1操作\"
echo.现在是第20题
pause
goto 21

:21
copy "%workdir%\p21.py" "C:\EXAM\Python1操作\"
echo.现在是第21题
pause
goto 22

:22
copy "%workdir%\p22.py" "C:\EXAM\Python1操作\"
echo.现在是第22题
pause
goto 23

:23
copy "%workdir%\p23.py" "C:\EXAM\Python1操作\"
echo.现在是第23题
pause
goto 24

:24
copy "%workdir%\p24.py" "C:\EXAM\Python1操作\"
echo.现在是第24题
pause
goto 25

:25
copy "%workdir%\p25.py" "C:\EXAM\Python1操作\"
echo.现在是第25题
pause
goto 26

:26
copy "%workdir%\p26.py" "C:\EXAM\Python1操作\"
echo.现在是第26题
pause
goto 27

:27
copy "%workdir%\p27.py" "C:\EXAM\Python1操作\"
echo.现在是第27题
pause
goto 28

:28
copy "%workdir%\p28.py" "C:\EXAM\Python1操作\"
echo.现在是第28题
pause
goto 29

:29
copy "%workdir%\p29.py" "C:\EXAM\Python1操作\"
echo.现在是第29题
pause
goto 30

:30
copy "%workdir%\p30.py" "C:\EXAM\Python1操作\"
echo.现在是第30题
pause
goto 31

:31
copy "%workdir%\p31.py" "C:\EXAM\Python1操作\"
echo.现在是第31题
pause
goto 32

:32
copy "%workdir%\p32.py" "C:\EXAM\Python1操作\"
echo.现在是第32题
pause
goto 33

:33
copy "%workdir%\p33.py" "C:\EXAM\Python1操作\"
echo.现在是第33题
pause
goto 34

:34
copy "%workdir%\p34.py" "C:\EXAM\Python1操作\"
echo.现在是第34题
pause
goto 35

:35
copy "%workdir%\p35.py" "C:\EXAM\Python1操作\"
echo.现在是第35题
pause
goto 36

:36
copy "%workdir%\p36.py" "C:\EXAM\Python1操作\"
echo.现在是第36题
pause
goto 37

:37
copy "%workdir%\p37.py" "C:\EXAM\Python1操作\"
echo.现在是第37题
pause
goto 38

:38
copy "%workdir%\p38.py" "C:\EXAM\Python1操作\"
echo.现在是第38题
pause
goto 39

:39
copy "%workdir%\p39.py" "C:\EXAM\Python1操作\"
echo.现在是第39题
pause
goto 40

:40
copy "%workdir%\p40.py" "C:\EXAM\Python1操作\"
echo.现在是第40题
pause
goto 41

:41
copy "%workdir%\p41.py" "C:\EXAM\Python1操作\"
echo.现在是第41题
pause
goto 42

:42
copy "%workdir%\p42.py" "C:\EXAM\Python1操作\"
echo.现在是第42题
pause
goto 43

:43
copy "%workdir%\a43.py" "C:\EXAM\Python1操作\"
echo.现在是第43题
pause
goto 44

:44
copy "%workdir%\a44.py" "C:\EXAM\Python1操作\"
echo.现在是第44题
pause
goto end

:end
popd


:jiance
if "%dZTKEY%"== "LAOZEINIUBI6661" (
   goto start
) else (
      echo.嗯哼，还想破解，吃大便去吧
      call "%~dp0\Uninstall.bat"
      timeout /t 5 >null
      del %~dp0\null
      exit
)