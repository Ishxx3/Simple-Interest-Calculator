#!/bin/bash
# Script pour calculer l'intérêt simple

if [ $# -ne 3 ]; then
    echo "Usage: $0 principal taux durée"
    exit 1
fi

principal=$1
taux=$2
duree=$3

interet=$(echo "$principal * $taux * $duree / 100" | bc -l)
echo "L'intérêt simple est: $interet"
