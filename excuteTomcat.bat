@echo off

:Excute
del /f /q monitorJava.txt
cmd /c startup.bat


:Protect
ping 127.0.0.1 -n 10
for /f "delims= " %%i in ('tasklist^|find /i "java.exe"') do (
	if /i "%%i"=="java.exe" goto Protect)

goto Excute