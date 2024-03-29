#! /usr/bin/env bash 
set -o errexit
set -o nounset
set -o pipefail 
# USUARIO RECIBIDO COMO PARAMETRO
GITHUB_USER=$1
# CARPETA CON LA FECHA ACTUAL
dir=/tmp/$(date +%F)
# VERIFICA SI EXISTE EL DIRECTORIO CON LA FECHA ACTUAL
if [ ! -d "$dir" ]; then
    # EL DIRECTORIO NO EXISTE - CREAR
    mkdir "$dir"
fi
# CONSULTANDO INFORMACION DEL USUARIO Y ALMACENANDO TEMPORALMENTE
curl "https://api.github.com/users/"$GITHUB_USER>/tmp/info.json;
# BUSCANDO ID
id=$(grep -oP '"id":\K[^,]+' /tmp/info.json)
# BUSCANDO LA FECHA DE CREACION 
created_at=$(grep -oP '"created_at":\K[^,]+' /tmp/info.json) 
# FORMANDO LA CADENA QUE SE VA A ESCRIBIR EN EL ARCHIVO
cadena=$(printf "Hola %s User ID: %s Cuenta fue creada el: %s \n" "$GITHUB_USER" "$id" "$created_at")
# FECHA EN LA QUE SE CONSULTO
fecha_hora_actual=$(date +"%Y-%m-%d %H:%M:%S")
# ESCRIBIENDO EN ARCHIVO
echo "Actualizado: $fecha_hora_actual" >> $dir/saludos.log
echo $cadena  >> $dir/saludos.log
echo ""  >> $dir/saludos.log
# ELIMINANDO ARCHIVO EN EL QUE SE GUARDO EL JSON
rm /tmp/info.json
