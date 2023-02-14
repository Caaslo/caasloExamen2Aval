if [ -z "$1" ]; then
    echo "Tiene que introducir una ciudad como parametro"
    exit 1
fi

ciudad=$1
awk -v ciudad="$ciudad" '$1 == ciudad {sum+=$4; count++} END {if (count > 0) printf "%.0f", sum/count; else echo 0}' consumos.txt