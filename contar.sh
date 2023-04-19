#!/bin/bash

#Obtiene todos los archivos .txt del directorio y los ordena numericamente

cantidadArchivos=$(find . -name "*.txt" | sort -n)

for i in $cantidadArchivos
do

    #Por cada archivo .txt obtenemos su cantidad de lineas
    cantidadFilas=$(cat "$i" | wc -l)

    #Imprime en consola la cantidad de filas de cada archivo .txt
    echo "$i" tiene  "$cantidadFilas" líneas.
done