#!/bin/bash

#======================================================================
#CICLOS EN BASH
#======================================================================

#Los ciclos son las estructuras de control mas utiles de un lenguaje
#de programacion.  

echo "============================================================"
echo "1. CICLO FOR"
echo "============================================================"

#El primer comando para construir ciclos en bash es 'for'

#La sintaxis basica de for es:

for n in 2 4 6 8 10
do
  echo "Numero par: $n"
done

#Todo lo que va despues de in se toma como la lista de los valores en
#los que se variara la variable n.  La lista de valores por defecto
#esta separada por un espacio en blanco.  Si se desea cambiar este
#comportamiento se puede modificar la variable de ambiente IFS:

IFS_old=$IFS
IFS=":"

string="perro:gato:vaca"
for animal in $string
do
  echo $animal
done

#El uso mas corriente de for es usando command substitution:

IFS=$IFS_old
i=1;
for file in $(find / -type d -maxdepth 1)
do
  echo "File $i: $file"
  ((i++))
done

#Un ciclo for con una sintaxis mas familiar se puede construir usando
#los simbolos de agrupacion (())

N=100
echo -n "La suma de los primeros $N numeros enteros es "
suma=0
for (( n=1 ; n<=N ; n++ ))
do
  suma=$((suma+n))
done
echo $suma

read ans

#======================================================================
#CICLO WHILE
#======================================================================

echo "============================================================"
echo "2. CICLO WHILE"
echo "============================================================"

#En otras condiciones el uso de un ciclo tipo "do...while" es mas
#apropiado.  En bash el while se usa de la siguiente manera:

while [ "${#login}" -lt "10" ]
do
  echo -n "Su login (mas de 10 caracteres):"
  read login
done

echo "Gracias!"
  
read ans 

#======================================================================
#CONTROL DE FLUJO DENTRO DE UN CICLO
#======================================================================

echo "============================================================"
echo "3. CONTROL DE CICLOS"
echo "============================================================"

#La ejecucion de un ciclo se puede controlar usando los comandos
#continue y break de manera similar a como se realiza el control en C

suma=0
echo -n "La suma de los numeros pares es: "
for (( i=1 ; i<=N ; i++ ))
do
  if (( i%2 ));then continue;fi
  suma=$((suma+i))
done
echo $suma

stored="hello"
trials=0
while [ "$pass" != "$stored" ]
do
  ((trials++))
  echo -n "Password: "
  read -s pass
  echo
  if [ "$pass" = "salir" -o "$trials" -gt "5" ];then break;fi
done


