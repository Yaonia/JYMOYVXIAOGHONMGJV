set dw1=taskkill /f /im GATESRV.exe
set dw2=taskkill /f /im MasterHelper.exe
set dw3=sc stop TDNetFilter
set dw4=echo.执行完毕
set dw5=timeout /t 4 >null
set dw6=echo.正在返回主界面...