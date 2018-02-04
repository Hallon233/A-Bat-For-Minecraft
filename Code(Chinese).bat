@echo off
title Run Minecraft  
::The application by HallonZhu(admin@alanchz.cn)
:start
echo.
echo ===========选项===========
echo 1.HMCL 
echo 2.Minecraft官方启动器
echo 3.保留位
echo 4.保留位
echo 5.保留位
echo e.退出
echo ===========选项===========
echo.
set /p input=请输入您要使用的启动器编码
if "%input%"=="1" goto HMCL
if "%input%"=="2" goto Minecraft
if "%input%"=="3" goto null
if "%input%"=="4" goto null
if "%input%"=="5" goto null
if "%input%"=="e" goto over
echo 输入错误
pause
goto start
:HMCL
cls
cd C:\Users\14911\AppData\Roaming
java -jar HMCL-2.7.9.54.jar
pause
goto start

:Minecraft
cls
cd C:\Program Files (x86)\Minecraft
"C:\Program Files (x86)\Minecraft\MinecraftLauncher.exe"
pause
goto start

:null
echo 此乃预留位,请按空格键返回
pause
goto start
:over
exit
