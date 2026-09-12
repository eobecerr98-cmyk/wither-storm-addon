@echo off
REM Script para empaquetar el add-on como .mcaddon en Windows

echo Empaquetando Wither Storm Add-on...

REM Crear directorio temporal
if exist temp_addon rmdir /s /q temp_addon
mkdir temp_addon

REM Copiar estructura
xcopy behavior_packs temp_addon\behavior_packs /E /I
xcopy resource_packs temp_addon\resource_packs /E /I
copy manifest.json temp_addon\

REM Crear archivo ZIP (requiere 7-Zip o similar)
cd temp_addon
7z a ..\ wither_storm_addon.zip *
cd ..

REM Limpiar
rmdir /s /q temp_addon

echo.
echo == Wither Storm Addon Empaquetado ==
echo Archivo: wither_storm_addon.mcaddon
echo.

pause
