#!/bin/bash

#======================================================================
#COMANDOS ESPECIALES
#======================================================================

#BASH cuenta con una serie de comandos muy especiales de particular
#utilidad a la hora de programar scripts.  Entre los mas utiles se
#encuentran:
#              find, grep, gawk, sed, cut, wc, du

#Algunos de ellos son por si mismos lenguajes (gawk, sed), otros son
#comandos simples (wc, du) y los restantes si bien son un poco mas
#compilados que estos ultimos pueden ser usados para tareas sencillas.

echo "============================================================"
echo "1. GREP"
echo "============================================================"

#grep permite comprobar si una palabra o expresion se encuentra dentro
#de un archivo o no:

echo "Estas son las lineas donde esta la palabra 'bash' en $0:"
grep bash $0

#grep tiene algunas opciones interesantes

echo "Lineas con numero:"
grep -n tiene $0

echo "Lineas con numero y nombre de archivo:"
grep -Hn numero $0

#Si en lugar de mostrar lineas que contengan una expresion se quieren
#es excluirlas se puede usar la opcion -v:

echo 
echo "File sin echos no \#:"
grep -v "echo" $0 | grep -v "#"

#read ans

echo "============================================================"
echo "2. GAWK"
echo "============================================================"

#gawk permite procesar un archivo organizado separando el contenido
#segun los campos en los que este organizado. 

gawk -F: '{print $1}' /etc/passwd 

#Por defecto gawk usa espacios en blanco para separar los campos de
#las lineas de un archivo.  Para cambiar esto se usa la opcion -F como
#en el ejemplo anterior.

echo
echo "Separamos la primera columna del archivo /etc/passwd usando gawk"

#Las aplicaciones mas comunes de gawk son para procesar la salida de otros comandos:

ls -l | gawk '{print "File: " $9 " (" $5 " B)"}'

numlines=$(wc -l $0 | gawk '{print $1}')

echo
echo "La mitad de la cantidad de lineas de este script es:" $((numlines/2))

#Un efecto parecido al que se consigue con gawk se puede conseguir
#usando el comando cut:

echo 
echo "Los grupos usados en esta maquina son:"

i=0
for grupo in $(cut -f 1 -d ":" /etc/group)
do
  ((i++))
  echo "Grupo $i: $grupo"
done

#read ans

echo "============================================================"
echo "3. FIND"
echo "============================================================"

#Una de las herramientas mas poderosas de linux es find.  Como su
#nombre lo sugiere este comando permite encontrar archivos o
#directorios y aplicar sobre ellos operaciones.

5~echo "Scripts de bash:"
find . -name '*.sh'

echo  "Presione enter para continuar..."
read ans

#find tiene una multitud de opciones que pueden ser usadas de manera
#inteligente para hacer busquedas verdaderamente complejas

echo
echo "directorios en mi cuenta:"
find ~ -type d -maxdepth 1
#O alternativamente
ls -l | grep -e ^d

echo -n "Presione enter para continuar..."
read ans

#Se puede decirle a find que ejecute alguna accion sobre los archivos
#o directorios que encuentra.

echo 
echo "Tamanos:"
find ~ -type f -maxdepth 1 -exec du -h {} \;

echo -n "Presione enter para continuar..."
read ans

#la opcion -exec recibe del comando find cada uno de los objetos
#encontrados (identificado como {}) y ejecuta la accion deseada (que
#siempre debe terminar en \;)

#Algunas de las aplicaciones mas interesantes de find tienen que ver
#con la busqueda usando criterios de tamano y tiempo:

echo
echo "Mas nuevos que .bash_history..."
find . -anewer ~/.bash_history 

echo -n "Presione enter para continuar..."
read ans

echo 
echo "Mas grandes que 5 KB..."
find . -size 5k

read ans

echo "============================================================"
echo "3. SED"
echo "============================================================"

#Sed es otro de esos poderosos lenguajes que permiten realizar tareas
#que de otra manera nos parecerian estremadamente complejas en linux.
#Sed fue creado para modificar el contenido de archivos.

echo
echo "Favor fijarse en lo que pasa despues de ejecutar el comando sed sobre loops.sh"
echo -n "Presione enter para continuar..."
read ans

sed -e 's/echo/ECHO/' loops.sh | more

echo
echo "Que cambio?"

#La regla de sustitucion se describe usando la sintaxis del comando
#mostrado arriba.  Si se desea conseguir mas de una sustitucion se
#debe crear un archivo con la lista de sustituciones deseadas (una por
#linea) y ejecutar el comando asi:

echo
echo "Favor fijarse en lo que pasa despues de ejecutar el comando sed sobre loops.sh"
echo -n "Presione enter para continuar..."
read ans

sed -f example.sed loops.sh

echo
echo "Que cambio?"

read ans

echo "============================================================"
echo "4. COMANDOS COMPLEJOS USANDO FIND/GAWK/SED/GREP"
echo "============================================================"

#Combinando los comandos vistos se pueden construir verdaderos
#comandos complejos.  Para la muestra un boton:

grep ":100:" /etc/passwd | gawk -F':' '{print $1","$5}' | sed -e 's/ /_/'
