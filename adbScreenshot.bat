@echo off
setlocal EnableDelayedExpansion
REM  Copyrights: youngpen
REM  version:1.2
:start
title adb��ͼ
echo.
echo adb�����ֻ��󣬽�ͼ�������ϡ�
echo ��س���ʼ,����ʱ��������ͼ�ļ�
echo ������������/��ĸ����ļ�������������ո�����exit�˳�
echo.
:set 
SET time=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
SET name=%time%
SET /P name=
IF /I '%name%'=='exit' goto 1
adb shell mkdir /sdcard/dcim/Screenshot
adb shell screencap -p /sdcard/dcim/Screenshot/%name%.png
adb pull /sdcard/dcim/Screenshot/%name%.png
cls

goto start

:1
exit