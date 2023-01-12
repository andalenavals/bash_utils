#!/bin/bash

#======================================================================
#VARIABLES (1)
#======================================================================

echo "//////////////////////////////////////////////////////////////////////"
echo "MANEJO BASICO DE VARIABLES"
echo "//////////////////////////////////////////////////////////////////////"

#Las variables pueden tener cualquier nombre 
n=2
var="Esta es una variable"

read ans

#Ej. CREE LA VARIABLE nombre CON SU NOMBRE

echo "============================================================"
echo "1. MOSTRANDO EL VALOR DE LAS VARIABLES"
echo "============================================================"

#echo es el comando que sirve para mostrar un mensaje incluyendo el
#valor de las variables

echo "n = $n"
echo "var = $var"

read ans

#Ej. USE echo PARA MOSTRAR EL VALOR DE LAS VARIABLES QUE CREO MAS ARRIBA

echo "============================================================"
echo "2. MOSTRANDO EL VALOR DE LAS VARIABLES"
echo "============================================================"

#Algunas variables propias del bash:

echo "Login del usuario: $LOGNAME"
echo "Nombre de la maquina: $HOSTNAME"
echo "El numero de segundos que lleva el script ejecutandose: $SECONDS"
echo "La ventana a la que esta dirigida la salida: $DISPLAY"

read ans

#Ej. INVESTIGUE LO QUE SON LAS VARIABLES 'PATH', 'PWD', 'HOME'

echo "============================================================"
echo "3. PARAMETROS DEL SCRIPT"
echo "============================================================"

#Unas de las variables mas importantes en un script son los parametros
#que se ingresan por la linea de comandos.

echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Parametro 3: $3"

#Estos parametros se llaman "positional parameters" y son utilizados
#para construir programas completos. 

#Variables relacionadas con estas son:

echo "Nombre del script: $0"
echo "Numero de parametros: $#"
echo "Parametros: $@"

read ans

echo "============================================================"
echo "3. OTRAS VARIABLES ESPECIALES"
echo "============================================================"

#Otras variables especiales asociadas a un script son:

echo "ID del proceso: $$"
#Tambien usado como un numero aleatorio
date > /dev/null &
echo "ID del ultimo procesos ejecutado en background: $!"
date --hoy &> /dev/null 
echo "Estado de la salida del ultimo comando: $? (1: error, 0: read anso)"

#Ej. TRATE DE CAMBIAR LOS COMANDOS ANTERIORES PARA VER COMO CAMBIA EL ESTADO DE LA SALIDAY


