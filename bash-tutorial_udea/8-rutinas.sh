#!/bin/bash

#======================================================================
#RUTINAS EN BASH
#======================================================================

echo "============================================================"
echo "1. FUNCTIONES O RUTINAS EN BASH"
echo "============================================================"

#Que seria de un lenguaje moderno sin la posibilidad de organizar el
#codigo en rutinas?  Bash permite crear rutinas de una manera bastante
#simle

function factorial
{
    N=$1
    
    fac=1
    for (( j=1 ; j<=N ; j++ ))
      do
      fac=$((fac*j))
    done

    echo $fac
}

i=$1
if ((i<1));then
    echo "You must provide a number larger than 1"
    read ans
fi

factor=$(factorial $i)

echo "El factorial de $i es $factor"

#Notese que la funcion debe preceder al llamado Las funciones en bash
#tipicamente no devuelven ningun valor.  Normalmente se utiliza la
#salida estandar como medio para entregar el resultado de la rutina.

#Notese ademas como los parametros de las funciones se manejan de la
#misma manera que los parametros de un script

#Las variables en bash son por defecto variables globales de modo que
#las variables del script seran vistas por las funciones y viceversa
