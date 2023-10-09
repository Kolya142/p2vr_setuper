@echo off
set rand=%random%
rmdir /s /q mod
set zip="C:\Program Files\7-Zip\7z.exe"
set url="https://github.com/Gistix/portal2vr/releases/latest/download/Portal2VR.zip"
wget %url% -O %temp%\p2vr_temp%rand%.zip
echo %zip%
%zip% x "%temp%\p2vr_temp%rand%.zip" -o"%cd%\mod"
pause
exit