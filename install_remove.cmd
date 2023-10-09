@ECHO OFF

set p2=E:\SteamLibrary\steamapps\common\Portal 2
dir

:choice

if /I "%1" EQU "u" goto :uninstall
if /I "%1" EQU "i" goto :install

set /P c=Instal or UnInstall[u,i]?
if /I "%c%" EQU "u" goto :uninstall
if /I "%c%" EQU "i" goto :install
goto :choice

:uninstall
start /D "%p2%" "" "%p2%\Uninstall_Portal_2_VR_Mod.cmd"
pause
exit

:install
mkdir "%p2%\portal2_dlc3"
mkdir "%p2%\VR"
echo set args "-insecure -window -novid +mat_motion_blur_percent_of_screen_max 0 +mat_queue_mode 0 +mat_vsync 0 +mat_antialias 0 +mat_grain_scale_override 0 -width 1280 -height 720"
copy mod\bin "%p2%\bin"
copy mod\portal2_dlc3 "%p2%\portal2_dlc3"
copy mod\VR "%p2%\VR"
copy Uninstall_Portal_2_VR_Mod.cmd "%p2%\Uninstall_Portal_2_VR_Mod.cmd"

mkdir "%p2%\portal2_dlc3\maps"
mkdir "%p2%\portal2_dlc3\maps\soundcache"
copy "%p2%\portal2\maps\soundcache\_master.cache" "%p2%\portal2_dlc3\maps\soundcache"
exit