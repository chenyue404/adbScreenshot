@echo off
REM  Copyrights: youngpen https://github.com/youngpen/
:start
title adb截图
echo.
echo 点回车开始，输入任意文字/字母替代文件名，输入exit退出
echo.
:set 
SET time=
SET name=
SET time=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
SET name=%time%
SET /P name=
IF /I '%name%'=='exit' goto 1
REM adb shell screencap -p | sed s/\r$// > %name%.jpg
adb exec-out screencap -p > %name%.jpg
echo.%name%.jpg
cls
goto start

:1
exit
