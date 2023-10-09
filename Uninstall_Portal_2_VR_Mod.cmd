@ECHO OFF
echo Uninstalling...
del /Q ".\bin\d3d9.dll"
del /Q ".\bin\openvr_api.dll"
RD /Q /S ".\portal2_dlc3"
RD /Q /S ".\VR"
echo Portal 2 VR Mod is uninstalled.
exit