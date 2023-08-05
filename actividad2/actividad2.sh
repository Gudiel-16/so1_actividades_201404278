#!/bin/bash

# Obtener fecha actual
fecha=$(date +'%Y-%m-%d')

# Ruta para guardar el file log
ruta_log="/tmp/$fecha"

# Crear directorio
mkdir -p "$ruta_log"

# Obtener data de github
user="Gudiel-16"
json=$(curl -s "https://api.github.com/users/$user")

# Extraer valores
id=$(echo "$json" | grep -o '"id": [0-9]*' | awk '{print $2}')
created_at=$(echo "$json" | grep -o '"created_at": "[^"]*"' | awk -F'"' '{print $4}')

# Imprimir mensaje
echo "Hola $user. User ID: $id. Cuenta fue creada el: $created_at."

# Crear file log
echo "Hola $user. User ID: $id. Cuenta fue creada el: $created_at." >> $"$ruta_log/saludos.log"
