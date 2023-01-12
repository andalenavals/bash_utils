
==================================================
Ejercicios de Bash
==================================================

Realizar scripts en bash que realicen las siguientes tareas:

1. Cree un script que tome de las opciones de la linea de comandos dos
   numeros y determine si el segundo es multiplo del primero o no.

2. Cree un archivo que reciba de la linea de comando un numero N y un
   directorio (o lista de archivos) y cree N directorios temporales
   conteniendo los directorios o archivos indicados.  El script debe
   evaluar que N>1 y que los archivos y directorios indicados existan.

3. Escriba un script que descomponga un numero entero indicado por
   linea de comandos en sus factores primos.

4. Escriba un script que determine cuantas veces aparece una
   determinada palabra dentro de un archivo.

5. Escriba un script que determine el numero de columnas de un archivo
   indicando por el teclado de manera optativa el simbolo que separa
   unas columnas de otras.  Asi por ejemplo:

   $ script passwd
   1

   $ script -s ":" passwd 
   8

6. Esciba un script que concatene en un solo archivo todos los
   archivos .dat que se encuentren en un directorio dado.

7. Escriba un script que extraiga de un documento en latex todos los
   comandos definidos por el usuario \newcommand y los coloque en un
   archivo miscomandos.tex.

8. Escriba un script de latex que elimine de un documento en latex
   todas las definiciones de nuevos comandos creando un nuevo archivo
   documento_nonew.tex y que en cambio incluya el archivo
   miscomandos.tex creado en el numeral anterior.

9. Elabore un script en el que dado un archivo de logines y cedulas y
   otro archivo con cedulas y nombre separados por el simbolo :, haga
   una lista de cedula,login,nombre en un solo archivo.  Asi:

   Archivo con logines:
     ....
     71786756:fdetal
     ...

   Archivo con nombres:
     ...
     71786756:Fulanito de tal
     ...

   Archivo final:
     ...
     71786756:fdetal:Fulanito de tal
     ...

10. Elabore un script que compare una a una las lineas de dos archivos
   (indicados por linea de comandos) y muestre solamente aquellas
   lineas que difieren entre ambos archivos indicando explicitamente
   cual linea pertenece a cual archivo.

11. Escriba un script que haga una lista de todos los archivos del
   directorio etc que pueden ser leidos por el usuario.

12. Escriba un script que lea una lista de logines de un archivo y
   determine si esos usuarios pertenecen o no a la maquina en la que
   se encuentra.  De pertenecer indique su estado (logeado, no
   logeado).

13. Pida el nombre y apellido de una persona y construya un login de
   menos de 8 caracteres usando la primera inicial del nombre y el
   apellido

14. Escriba un script que pida a un usuario su fecha de cumpleanos y la
   guarde en un archivo "cumpleanos.txt"

15. Escribir un script que indique cuantos dias faltan para tu
   cumpleanos y cuantos anos vas a cumplir usando la fecha guardada en
   "cumpleanos.txt"

16. Escribir un script que haga un backup comprimido de un directorio
   dado por linea de comando cuando su tamano sea mayor o igual a un
   cierto limite.

17. Escribir un script que encuentre todos los archivos *.out y *~ en
   su cuenta y los mueva en un directorio Trash previamente creado,
   insertandolos en un archivo comprimido "reciclaje.tar.gz"

18. Escribir un programa que permita borrar todos los archivos *.out o
   *.aux de una cuenta de usuario pidiendo previamente una confirmacion
   para el borrado.

19. Escribir un script en el que dado un archivo o LISTA DE ARCHIVOS
   pasados por la linea de comandos le presente al usuario una lista
   de opciones para comprimir el archivo usando zip, bzip2 o tar.gz y
   que despues de que el usuario escoja realice la compresion. 

20. Elaborar un script que leyendo el archivo /etc/passwd extraiga
   todos los logines de los usuarios de una maquina, listandolos en
   orden alfabetico ascendente.

21. Elaborar un script para el borrado inteligente de archivos.  El
   script debe funcionar asi:

   $ borra file
   
   Debe preguntar al usuario que desea hacer con el archivo: borrarlo
   definitivamente, enviarlo a una papelera de reciclaje, cancelar
   operacion.

   Si se usa

   $ borra -t $file

   Simplemente lo envia a una papelera de reciclaje sin preguntar
   nada.

   $ borra -f $file
   
   Borra el archivo definitivamente sin preguntar nada.

   La papelera de reciclaje debe ser el directorio /tmp/<login>.trash.

   El script debe evaluar el tamano de la papelera y si es superior a
   un cierto valor limite entonces el programa preguntara si se desea
   que los archivos almacenados alli deben ser borrados
   definitivamente o no.

22. Crear un script que dado un archivo (indicado por linea de comando)
   cree un archivo oculto que contenga una breve descripcion del
   primero.  La descripcion debe ser ingresada por el usuario por
   teclado.

23. Elabore un script que simule un shell.  Reciba comandos desde el
   teclado, los numere y muestre en el shell, los ejecute y almacene
   en la cuenta del usuario en un archivo history.log la lista de los
   comandos ejecutados.

   La salida de un shell simulado como ese debe aparecer de la
   siguiente forma:

   mishell [1]> ls
   Ejecutando ls:
   condicionales.sh*  exercises.sh  exercises.sh~loops.sh  rutinas.sh
   
   mishell [2]> lsa -lh
   Ejecutando lsa -lh:
   -bash: lsa: command not found
   
   mishell [2]> ls -lh
   Ejecutando ls -lh:
   total 28K
   -rwxr-xr-x  1 jzuluaga users 4,7K sep 18 23:32 condicionales.sh*
   -rw-r--r--  1 jzuluaga users 5,0K sep 19 00:48 exercises.sh
   -rw-r--r--  1 jzuluaga users  103 sep 19 00:04 exercises.sh~
   -rw-r--r--  1 jzuluaga users 2,7K sep 18 23:49 loops.sh
   -rw-r--r--  1 jzuluaga users 1,3K sep 19 00:02 rutinas.sh

   mishell [3]>cat history.log
   Ejecutando cat history.log:
   lun sep 19 12:49:29 COT 2005: ls (successful)
   lun sep 19 12:50:29 COT 2005: lsa -lh (failed)
   lun sep 19 12:51:29 COT 2005: ls -lh (successful)

   
