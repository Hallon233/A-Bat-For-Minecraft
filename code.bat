@echo off
::本程序是用bat to exe打包的,其中整合了hmcl以及mch
:start
::--------------------------------------------------------
title Choose a Launcher to Run
echo.
echo ===========选项===========
echo 1.HMCL
echo 2.Official Launcher
echo 3.[工具]MCH
echo 4.null
echo 5.null
echo 6.null
echo 7.null
echo 8.null
echo 9.null
echo e.退出
echo ===========选项===========
echo.
echo 本文件还在更新,如需新功能请在GitHub中反馈给我
::--------------------------------------------------------
set /p input=请输入序号: 
if "%input%"=="1" goto HMCL
if "%input%"=="2" goto Official
if "%input%"=="3" goto mch
if "%input%"=="4" goto null
if "%input%"=="5" goto null
if "%input%"=="6" goto null
if "%input%"=="7" goto null
if "%input%"=="8" goto null
if "%input%"=="9" goto null
if "%input%"=="e" goto exit
if "%input%"=="exit" exit
echo 输入错误,请重新输入!
pause
goto start
::--------------------------------------------------------
:HMCL
title You're Running Hello!Minecraft Launcher
cls
echo loading......
echo 提示:记得启动后定位到您的.minecraft目录哦
java -jar HMCL-2.7.9.54.jar
pause 
goto start
::--------------------------------------------------------
:Official
title You're Running Minecraft Official Launcher
cls 
echo loading......
echo 如无法正常加载请检查您的启动器是否安装在C:\Program Files (x86)\Minecraft
c:
cd C:\Program Files (x86)\Minecraft
MinecraftLauncher.exe
pause 
goto start
::--------------------------------------------------------
:MCH
cls
echo loading...... 
cd mch
WpfMinecraftCommandHelper2.exe
goto start
::--------------------------------------------------------
:null
title
cls    
echo 此乃预留位,按空格键返回...
pause 
goto start
::--------------------------------------------------------
:exit
title 确认
cls
set /p exit=您确定要退出吗(y/n)
if "%exit%"=="y" exit
if "%exit%"=="n" goto start
goto start 
