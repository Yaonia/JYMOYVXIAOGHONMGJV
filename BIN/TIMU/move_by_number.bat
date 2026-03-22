@echo off
rem ---------- 计算脚本目录与上一级目录（syj） ----------
set "gz=%~dp0"
set "syj=%gz%.."
for %%I in ("%syj%") do set "syj=%%~fI"

rem ---------- 将工作目录切换到 %syj%\TIMU ----------
set "workdir=%syj%\TIMU"
pushd "%workdir%" 2>nul || (
  echo 无法切换到工作目录：%workdir%
  exit /b 1
)

setlocal enabledelayedexpansion

set /p num=请输入数字: 
if "%num%"=="" (
  echo 未输入数字，退出。
  popd
  exit /b 1
)

rem 计算数字长度
set "len=0"
set "tmp=%num%"
:len_loop
if defined tmp (
  set "tmp=%tmp:~1%"
  set /a len+=1
  goto :len_loop
)

rem 搜索匹配的文件（文件名结尾为数字）
set i=0
for %%F in (*%num%.*) do (
  set "name=%%~nF"
  set "suffix=!name:~-%len%!"
  if "!suffix!"=="%num%" (
    set /a i+=1
    set "file!i!=%%~fF"
  )
)

if %i%==0 (
  echo 未找到匹配的文件。
  popd
  exit /b 1
)

rem 自动选择第一个匹配的文件
set "choice=!file1!"
echo 自动选择文件：%choice%

echo 正在移动 "%choice%" 到 C:\
move "%choice%" C:\
echo 完成。
popd
exit /b 0
