#!/bin/bash

#======================================================================
#VARIABLES (2)
#======================================================================

echo "//////////////////////////////////////////////////////////////////////"
echo "MANEJO AVANZADO DE VARIABLES"
echo "//////////////////////////////////////////////////////////////////////"

echo "============================================================"
echo "1. ARREGLOS"
echo "============================================================"

#Como en cualquier lenguaje de programacion bash permite crear
#arreglos

#Existen tres manera de asignar arreglos: 

#1. Todos los elementos de una vez
animales=(perro gato pantera tigre)

#2. Algunos elementos identificando el indice respectivo
frutas=([1]=papaya [2]=sandia [5]=lulo)

#3. Elemento por elemento
estudiantes[1]=Alvaro
estudiantes[2]=Jorge
estudiantes[3]=Mauricio

#Para mostrar un elemento de un arreglo se usa brace expansion:
echo 
echo "Mi fruta preferida es: ${frutas[2]}"

#Para mostrar todos los elementos de un arreglo se usa tambien un tipo
#especial de brace expansion:
echo
echo "Algunos animales son "${animales[@]}

read ans

#Es posible entrar desde la stdin un arreglo
echo 
echo -n "Entre sus nombres y apellidos:"
read -a nombre
echo "Hola ${nombre[0]}!"

read ans

echo "============================================================"
echo "1. BRACE EXPANSION Y MANIPULACION DE CADENAS"
echo "============================================================"

#Usando brace expansion es posible manipular cadenas de caracteres.

#Ya habiamos visto como contar el numero de caracteres en una cadena

echo
echo "El numero de letras en tu nombre es: ${#nombre[0]}"

#Tambien podemos extraer una parte de la cadena usando:
#${string:index:length}

echo
echo "Tus iniciales son: ${nombre[0]:0:1}.${nombre[1]:0:1}.${nombre[2]:0:1}"

#Incluso podemos reemplazar parte de una cadena por otra:

string=frutas
echo
echo "A mi me gustan las $string..."
echo "Por eso yo como muchas ${string//fr/p}..."

