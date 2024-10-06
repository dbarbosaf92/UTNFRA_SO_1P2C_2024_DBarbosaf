#!/bin/bash

echo
echo 'Creo estructura asimetrica'
mkdir -p Estructura_Asimetrica/{{correo/cartas{1..100},clientes/cartas{1..100},correo/carteros_{1..10}}
echo
echo 'Muestro el tree:'
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
