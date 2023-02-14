#!/bin/bash

menor_media=9999999
ciudad_menor=""

while read -r ciudad; do
    media=$(./cmedia.sh "$ciudad")
    if ((media < menor_media)); then
        menor_media=$media
        ciudad_menor=$ciudad
    fi
done < <(sed 1d consumos.txt | awk '{print $1}')

echo "La ciudad con la media de consumos más baja es: $ciudad_menor"

