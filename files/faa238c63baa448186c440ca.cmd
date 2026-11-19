@echo off
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\workspace.ps1" -Action Game -ProfileName board001-preview -Board001Preview -RenderingDriver opengl3_angle
