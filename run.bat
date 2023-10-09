#@ECHO OFF

set p2=E:\SteamLibrary\steamapps\common\Portal 2\portal2.exe
dir

:choice

set /P c=VR or NON-VR[v, n]?
if /I "%c%" EQU "n" goto :nonvr
if /I "%c%" EQU "v" goto :vr

goto :choice

:nonvr
echo NON-VR
start "" "cmd /c install_remove.cmd u"
start "" "%p2%" -steam -dev
pause
exit

:vr
echo VR
start "" "cmd /c install_remove.cmd i"
start "" "%p2%" -steam -insecure -window -novid +mat_motion_blur_percent_of_screen_max 0 +mat_queue_mode 0 +mat_vsync 0 +mat_antialias 0 +mat_grain_scale_override 0 -width 1280 -height 720
pause
exit