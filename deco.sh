#!/bin/bash

ciudad="$1"
media=$(./cmedia.sh "$ciudad")
limite=400

if (( $(echo "$media < $limite" | tr -d '\n') )); then
    echo "ECO"
else
    echo "NO ECO"
fi