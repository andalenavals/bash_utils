#!/bin/bash

#======================================================================
#CONDICIONALES
#======================================================================

#Los condicionales son las primeras estructuras de control que
#conocemos de un lenguaje

#La sintaxis basica del comando if en bash es:

echo "============================================================"
echo "1. CONDICIONALES BASICOS"
echo "============================================================"

if ls
then 
    echo "Funciona"
else
    echo "No funciona"
fi

#if recibe como parametros la salida de otra instruccion y si la
#instruccion se ejecuta correctamente entonces es un "si" para el
#condicional.  Debe tenerse cuidado con finalizar correctamente un
#bloque if usando el comando fi.

#Hay distintas maneras de escribir un if

if lsa &> /dev/null
then 
    echo "lsa es un alias"
else
    echo "lsa no es un comando"
fi

if grep lsa *.sh
then echo "Un script contiene 'lls'"
else  "Ningun script contiene 'lls'"
fi

read ans

#======================================================================
#CONDICIONALES NUMERICOS
#======================================================================

echo "============================================================"
echo "2. NUMERICOS"
echo "============================================================"

#Si de lo que se trata es de evaluar una condicion numerica sobre
#variables es posible utilizar el doble parentesis que ya habiamos
#usado para hacer operaciones matematicas

a="1"
b="2"

if (( a<b ))
then 
    echo "$a es menor que $b"
else
    echo "$b no es menor que $a"
fi

c="6"
d="8"

#Es posible usar los operadores && y || usados en lenguajes como C
#para evaluar condiciones mas complejas

if (( c%2 || d%2 ))
then
    echo "Uno de los dos no es par"
else
    echo "Ambos $c y $d son pares"
fi

e=10
f=0

read ans

#======================================================================
#CONDICIONALES DE ARCHIVOS Y DE CADENAS
#======================================================================

echo "============================================================"
echo "3. CONDICIONALES SOBRE CADENAS Y ARCHIVOS"
echo "============================================================"

#Para evaluar condicionales sobre cadenas y archivos se utiliza el
#comando test de bash

if test -e condicionales.sh 
then
    echo "El archivo condicionales.sh si existe"
else
    echo "El archivo condicionales.sh no existe"
fi

#Todo lo que puede hacerse con el comando test (consultar la man page
#de test) puede hacerse usando los simbolos "[]" o "[[ ]]".  Asi por
#ejemplo el codigo arriba puede escribirse de forma equivalente asi:

if [ -e condicionales.sh ]
then
    echo "Que si, el archivo condicionales.sh si existe!"
else
    echo "Que no, el archivo condicionales.sh no existe"
fi

#Se puede usar [] para comparar las propiedades de archivos 

file1=condicionales.sh
file2=loops.sh

echo 

echo -n "El archivo "
if [ $file1 -nt $file2 ];then
    echo "$file1 es mas nuevo que $file2"
else
    echo "$file2 es mas nuevo que $file1"
fi

#Otras opciones para evaluar las propiedades de archivos pueden
#encontrarse consultando la pagina de manual de bash

#La comparacion de cadenas en bash con test usa los mismos simbolos de
#comparacion que se usan para los numeros: = y !=

fruta1="manzana"
fruta2="pera"

if [ "$fruta1" = "$fruta2" ];then
    echo "Las frutas son las mismas"
else
    echo "Las frutas son distintas"
fi

#Es muy frecuente usar test para evaluar si se pasaron o no parametros
#al programa.  Esto se logra usando las opciones -z y -n.  Que hace
#cada una?

echo
if [ -z "$1" ];then echo "Se deben pasar parametros"
else echo "El parametro 1 es $1";fi

if [ -n "$2" ];then
    echo "No se deben pasar dos parametros"
fi

#Si se quieren evaluar varias condiciones en una con test se puede
#usar las opciones -a (and) y -o (or):

if [ "$1" = "casa" -a "$#" -gt "1" ];then
    echo "Opciones correctas"
else
    echo "Opciones incorrectas"
fi

read ans

#======================================================================
#COMANDO DE SELECCION
#======================================================================

echo "============================================================"
echo "5. COMANDO DE SELECCION"
echo "============================================================"

#En programas que tienen una compleja interaccion con el usuario se
#vuelve extremadamente util contar con un comando que permita ejecutar
#distintas instrucciones deacuerdo a valores distintos de una
#variable.  En bash el comando de seleccion es case:

case $1 in 

    "casa") 
    echo "Objeto"
    ;;

    "perro")
    echo "Animal"
    ;;

    "juan"|"jorge")
    echo "Persona"
    ;;

    *)
    echo "Ninguna"
    ;;

esac

read ans 
