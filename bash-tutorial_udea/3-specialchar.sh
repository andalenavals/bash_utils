#!/bin/bash

#======================================================================
#CARACTERES ESPECIALES
#======================================================================

echo "//////////////////////////////////////////////////////////////////////"
echo "CARACTERES ESPECIALES"
echo "//////////////////////////////////////////////////////////////////////"

#Como en todos los lenguajes existen en bash una serie de caracteres
#con una funcion especifica en el lenguaje.  

echo "============================================================"
echo "1. COMENTARIOS EN BASH (#)"
echo "============================================================"

#Por ejemplo el caracter # se usa para construir el "hash-bang" que se
#coloca al principio del script y para hacer comentarios al codigo.
#Hay que tener presente sin embargo que la funcion del # puede verse
#modificada deacuerdo al contexto

echo "Aqui # no es un comentario"
echo Aqui si es un # comentario
echo Pero aqui#no vuelve a serlo.  Por que?
echo Aqui \# tampoco

echo "============================================================"
echo "2. QUOTING (\"\", '')"
echo "============================================================"

#Cuando se encierran entre comillas dobles o sencillas cadenas de
#caracteres en bash el resultado es distinto.  

#Se distinguen dos tipos de quoting:

echo Quoting parcial:"Aqui se muestra el mensaje y el valor de una variable ($0)"
echo Quting total:'Aqui se muestra el mensaje per no el valor de una variable ($0)'

#Cuando se usa "" todas las expresiones internas se evaluan
#(incluyendo el llamado al valor de variables y la sustitucion de
#comandos - ver mas abajo).  Cuando se usan '' las expresiones contenidas no se evaluan

#Ej. INTENTE CONSTRUIR UN MENSAJE COMPLETO COMBINANDO "", '' Y NINGUNA
#DE LAS DOS

read ans

#Usando quoting se puede hacer "command substitution" que es la accion
#en la que la salida de un comando se convierte en el contenido de una
#variable.

echo
echo "Command substititution usando \`\`:"

usuario=`logname`
maquina=`hostname`
echo "Mi direccion de correo electronico es: $usuario@$maquina"

#Ej. USE COMMAND SUBSTITUTION PARA INDICAR CUAL ES EL TAMANO DEL
#DIRECTORIO ACTUAL (COMANDO du -s .)

read ans

echo "============================================================"
echo "3. AGRUPACION"
echo "============================================================"

#Varios comandos se pueden escribir en una misma linea usando ; para separarlos:

echo "Resultado de 'ls -m;date;ps':"
ls -m;date;ps

#Se pueden agrupar varios comandos usando un parentesis sencillo y
#separandolos con ;.  La diferencia respecto al caso anterior es que
#todas las variables que hayna sido declaradas y usadas dentro del
#parentesis no son vistas desde afuera

(archivo=$HOME/.bashrc;echo -n "El archivo $archivo es del tipo:";file $archivo)
echo "El archivo anterior era: $archivo"

#El parentesis tambien puede usarse para hacer "command substitution"
#que es la accion en la que la salida de un comando se convierte en el
#contenido de una variable.

read ans

echo
echo "Command substititution usando ():"
fecha=$(date)
echo La fecha de hoy es $fecha

#Ej. USE SUSTITUCION DE COMANDO PARA ASIGNARLE A UNA VARIABLE LA LISTA
#DE LOS ARCHIVOS EN EL DIRECTORIO PRESENTE

read ans

#Las llaves {} se usan en bash con dos propositos:

#1. Agrupar un bloque de codigo.  De la misma manera que en algunos
#lenguajes de programacion:

echo
echo "Crear el contenido del archivo trash.txt..."
{
    ls -l
    ps
    du -sk *
} > trash.txt

#2. "Brace Expansion"
echo
echo "Usando brace expansion para generar una lista de opciones:"
echo "Files:"
echo documento.{ps{1,2,3},dvi,aux}

echo
echo "Conteo del numero de caracteres de una cadena:"
echo "El numero de caracteres del nombre de este programa ($0) es ${#0}"

#Ej. PEDIR A UNA PERSONA SU NOMBRE E INDICARLE CUANTAS LETRAS TIENE

read ans

#Otro tipo de agrupacion es la que se usa para evaluar operaciones
#matematicas con variables enteras.  El simbolo de agrupacion en este
#caso es (()).

echo
echo -n "Entre su edad:";read edad

((decadas=edad/10,residuo=edad%10))

echo Has vivido $decadas decadas y $residuo anos

read ans

#Notese la manera como se separaron con espacios las operaciones

#El resultado de operaciones aritmeticas tambien puede almacenarse en
#una variable usando $ y el doble parentesis.  En este caso en la
#variable se almacena el resultado de la ultima operacion en la lista:

echo
dias=365
echo "El ano tiene 365 dias:"
horas=$((dias*24))
echo "$horas horas..."
minutos=$((horas=dias*24,horas*60))
echo "$minutos minutos..."
segundos=$((minutos*60))
echo "$segundos segundos..."

read ans

#Nota: el mismo resultado anterior se pudo haber obtenido usando dos
#comandos especiales de bash.

echo
echo "El numero de segundos en un ano es:"
let segundos=dias*24*60*60
echo $segundos "(usando let)"
segundos=`expr $dias \* 24 \* 60 \* 60`
echo $segundos "(usando expr)"

echo "============================================================"
echo "4. ESCAPING"
echo "============================================================"

#Todos los caracteres especiales pueden "escaparse" usando \ 

echo "Como es que puedo imprimir \" sin que bash crea que termine esta frase?"
echo "Para mostrar un \\ se debe usar \\\\"

