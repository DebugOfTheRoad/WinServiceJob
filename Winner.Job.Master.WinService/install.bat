@echo off
set /p type=��ѡ��װ��ж�أ�1. ��װ   2. ж�أ�
if %type%==1 (goto install) else (goto uninstall)
exit
:install
set /p platform=��ѡ�����ƽ̨��1. x86   2. x64��
set platform_path=c:\windows\microsoft.net\

if %platform%==1 (set "platform_path=%platform_path%framework\") else (set "platform_path=%platform_path%framework64\")

set /p framework=��ѡ��������汾��1. v2.0    2. v4.0��
if %framework%==1 (set "platform_path=%platform_path%v2.0.50727\") else (set "platform_path=%platform_path%v4.0.30319\")

set installutil_location=%platform_path%installutil.exe
xcopy %installutil_location%  %~dp0
%~d0
cd %~dp0
installutil Winner.YXH.GPU.WCF.Host.exe

del installutil.exe

pause
exit

:uninstall
set /p platform=��ѡ�����ƽ̨��1. x86   2. x64��
set platform_path=c:\windows\microsoft.net\

if %platform%==1 (set "platform_path=%platform_path%framework\") else (set "platform_path=%platform_path%framework64\")

set /p framework=��ѡ��������汾��1. v2.0    2. v4.0��
if %framework%==1 (set "platform_path=%platform_path%v2.0.50727\") else (set "platform_path=%platform_path%v4.0.30319\")

set installutil_location=%platform_path%installutil.exe
xcopy %installutil_location%  %~dp0
%~d0
cd %~dp0
installutil Winner.YXH.GPU.WCF.Host.exe -u

del installutil.exe

pause
exit