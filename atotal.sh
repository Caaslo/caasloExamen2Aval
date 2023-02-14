#!/bin/bash

echo "Introduce una ciudad: "
read ciudad

while ! grep -qw "$ciudad" consumos.txt; do
  echo "La ciudad no se ha encotrado. Introduzca otra ciudad: "
  read ciudad
done

total=0
while read line; do
  if [[ $line == "$ciudad"* ]]; then
    consumo=$(echo $line | awk '{print $4}')
    total=$((total+consumo))
  fi
done < consumos.txt

echo "El consumo total de $ciudad es $total."