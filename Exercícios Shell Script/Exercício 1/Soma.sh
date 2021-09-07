#!/bin/bash

clear

echo "Por favor digite dois numeros que deseja somar:"
echo

echo "Digite o promeiro numero:" 
read n1
echo "Digite o segundo numero:"
read n2

soma=$(echo "($n1+$n2)" | bc -l)


clear

echo "A soma de $n1 + $n2 e: $soma\n"
