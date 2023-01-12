#!/bin/bash
#Este es un script de ejemplo para el Taller de Computacion Cientifica

#Toma el nombre del directorio de la linea de comandos
directorio=$1

#Si ningun nombre de directorio fue proveido
if [ ! -d $directorio ]
then
    echo "El directorio $directorio no existe"
    exit
else
    if [ -z "$directorio" ];then directorio=.;fi
    echo "Analizando el directorio '$directorio':"
fi

#Determina el numero de archivos usando find y wc
echo -n "Numero de archivos:"
find $directorio -type f | wc -l 2> /dev/null

#Determina el numero de directorios usando find y wc
echo -n "Numero de directorios:"
find $directorio -type d | wc -l 2> /dev/null

#Determina el tamano total 
echo -n "Tamano total (kb): "
du -skc $directorio | head -n 1

#Crea una lista de todos los archivos y sus propiedades (ls -l)
find $directorio -type f -exec ls -l {} \; > files$$.txt 

#Ordena los archivos deacuerdo con la 5a columna (tamano)
sort -k 5 -r -n files$$.txt > sorted$$.txt

#Determina el nombre del primer archivo a partir de la lista usando gawk
filename=`head -n 1 sorted$$.txt | gawk '{print $9}'`
#Toma el tamano del primer archivo
size=`head -n 1 sorted$$.txt | gawk '{print $5}'`
#Convierte el tamano en kilobytes
size=$((size/1024))
echo -e "El archivo mas grande es: \n$filename ($size kb)"

#Determina el nombre del ultimo archivo a partir de la lista usando gawk
filename=`tail -n 1 sorted$$.txt | gawk '{print $9}'`
#Toma el tamano del ultimo archivo
size=`tail -n 1 sorted$$.txt | gawk '{print $5}'`
echo -e "El archivo mas pequeno es:\n$filename ($size bytes)"

#Borra todos los temporales que fueron creados
rm -rf *$$.txt

#Sale con exit status 0
exit 0
