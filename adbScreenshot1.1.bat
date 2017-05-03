echo off
setlocal EnableDelayedExpansion
REM  Copyrights: youngpen
REM  version:1.1
:start
title adb截图
echo.
echo adb连接手机后，截图到电脑上。
echo 点回车开始
echo 输入任意文字/字母替代文件名，请勿输入空格
echo.
:set 
SET time=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
SET name=%time%
SET /P name=
adb shell mkdir /sdcard/dcim/Screenshot
adb shell screencap -p /sdcard/dcim/Screenshot/%name%.png
adb pull /sdcard/dcim/Screenshot/%name%.png
echo.
cls
goto start
