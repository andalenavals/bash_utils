#!/bin/bash 

echo "//////////////////////////////////////////////////////////////////////"
echo "MANEJO BASICO DE LA ENTRADA/SALIDA ESTANDAR"
echo "//////////////////////////////////////////////////////////////////////"

echo "============================================================"
echo "1. SALIDA ESTANDAR"
echo "============================================================"

#echo puede mostrar las cosas de muy diversas maneras

echo -n "Muestra mensaje sin dar salto de linea..."
echo "Esto salio pegado"

#Ej. ENSAYE SU PROPIO USO DE echo -n

read ans

#echo usa tambien "caracteres escapados" con las funciones especiales
#que tienen en muchos lenguajes de programacion.  En ese caso debe
#usarse la opcion -e

echo -e "Este es un mensaje\nQue oucpa varias lineas\nen la pantalla"

#Ej. AHORA USE VARIABLES \n, \t PARA HACER UN MENSAJE MAS COMPLEJO

read ans


echo "============================================================"
echo "1. ENTRADA ESTANDAR"
echo "============================================================"

#La entrada estandar de bash se hace con el comando read

echo -n "Dame tu nombre:"
read nombre
echo "Su nombre es $nombre"

#Notese que en read no se coloca la variable con el signo $

read ans

#La entrada puede hacerse mas complicada con el uso de opciones para read

echo
echo -n "Entre su edad:"

#La opcion -n permite entrar un numero limitado de caracteres y
#continuar la ejecucion sin terminar con un retorno de carro

read -n 2 edad
echo 
echo "$edad anos?! pero que viejo estas"

read ans

#Con la opcion -s puedes permitirle al usuario entrar un texto sin
#mostrar lo que esta entrando (una contrasena por ejemplo)

echo
echo -n "Ahora si entra tu edad que yo no se la digo a nadie: "
read -s edad
echo
echo "Me sigues mintiendo, tu aparentas mas que $edad anos"
echo

#Para los impacientes esta puede ser una buena opcion...

echo -n "Ahora dame tu numero telefonico:"
read -t 1 numero
echo
echo "Muy lento!"

#Ej. AHORA INTENTE HACER ALGO PARECIDO
