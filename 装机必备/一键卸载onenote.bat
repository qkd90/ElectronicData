@echo off
title һ��ɾ��OneDrive
::��ȡ����ԱȨ��
%Windir%\System32\FLTMC.exe >nul 2>&1 || (
    IF EXIST "%TEMP%\AdminRun.vbs" DEL /f /q "%TEMP%\AdminRun.vbs" 2>nul
    ECHO CreateObject^("Shell.Application"^).ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\AdminRun.vbs"
    ECHO CreateObject^("Scripting.filesystemobject"^).DeleteFile ^(WScript.ScriptFullName^) >> "%TEMP%\AdminRun.vbs"
    %Windir%\System32\CSCRIPT.exe //Nologo "%TEMP%\AdminRun.vbs"
    Exit /b
)
echo.
echo ����ɾ��OneDrive���Ƿ������
echo.
echo �ǣ��밴�����������
echo �񣺵�����Ͻǣ��رձ����ڡ�
echo.
echo ���а�ȫ�������������ʾ�����м��ɡ�
pause
echo ���ڵ���OneDrive�Դ�ж�ع��ܣ����Ժ�
for /d %%f in (%localappdata%\Microsoft\OneDrive\*) do (if exist "%%f\OneDriveSetup.exe" %%f\OneDriveSetup.exe /uninstall)
echo OneDriveж����ɣ�
del /f /s /q %localappdata%\Microsoft\OneDrive\*.*
rd /s /q %localappdata%\Microsoft\OneDrive\
echo OneDrive�����ļ�ɾ����ɣ�
reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /v Attributes /t REG_DWORD /d "0xf090004d" /f
echo OneDrive������ѡ��ɾ����ɣ�
echo ɾ��������OneDriveͼ�꽫��������Windows��Դ����������Ч��
echo.
echo.
echo �ѽ�OneDrive����ж�ء����в����ļ��޷�ɾ�����������ֹ�ɾ�����ɡ�
echo �밴������˳�������
pause