#!/bin/bash

# instalación sh
SCRIPT_NAME="calculadora"
INSTALL_DIR="/usr/local/bin"
DEST="$INSTALL_DIR/$SCRIPT_NAME"

echo "🚀 Instalando '$SCRIPT_NAME' en $INSTALL_DIR..."

# Verifica que el archivo existe en el directorio actual
if [ ! -f "$SCRIPT_NAME" ]; then
  echo "❌ Error: el archivo '$SCRIPT_NAME' no se encuentra aquí."
  echo "Asegúrate de ejecutar este instalador desde el mismo directorio del script."
  exit 1
fi

# Copia el script al directorio del sistema
sudo cp "$SCRIPT_NAME" "$DEST"
sudo chmod +x "$DEST"

echo "✅ ¡Listo! Ahora puedes usar '$SCRIPT_NAME' como un comando en tu terminal."
echo "Ejemplo: $SCRIPT_NAME -h"
