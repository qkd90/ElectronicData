@echo off
title 恢复微软商店
::获取管理员权限
%Windir%\System32\FLTMC.exe >nul 2>&1 || (
    IF EXIST "%TEMP%\AdminRun.vbs" DEL /f /q "%TEMP%\AdminRun.vbs" 2>nul
    ECHO CreateObject^("Shell.Application"^).ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\AdminRun.vbs"
    ECHO CreateObject^("Scripting.filesystemobject"^).DeleteFile ^(WScript.ScriptFullName^) >> "%TEMP%\AdminRun.vbs"
    %Windir%\System32\CSCRIPT.exe //Nologo "%TEMP%\AdminRun.vbs"
    Exit /b
)
echo.
echo 即将恢复微软商店，是否继续？
echo.
echo 是：请按任意键继续。
echo 否：点击右上角，关闭本窗口。
echo.
pause
Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
echo 请按任意键退出本程序。
pause