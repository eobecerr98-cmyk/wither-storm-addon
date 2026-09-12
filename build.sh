#!/bin/bash
# Script para empaquetar el add-on como .mcaddon

echo "Empaquetando Wither Storm Add-on..."

# Crear directorio temporal
mkdir -p temp_addon

# Copiar estructura
cp -r behavior_packs temp_addon/
cp -r resource_packs temp_addon/
cp manifest.json temp_addon/

# Crear archivo ZIP
cd temp_addon
zip -r ../wither_storm_addon.mcaddon *
cd ..

# Limpiar
rm -rf temp_addon

echo "✓ wither_storm_addon.mcaddon creado exitosamente!"
echo "Tamaño: $(du -h wither_storm_addon.mcaddon | cut -f1)"
