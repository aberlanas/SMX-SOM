---
title: "[ Práctica ] Particiones, Sistemas de Ficheros y Ficheros"
author: [Diego Carrasco García y Angel Berlanas Vicente]
date: "2021-01-23"
subject: "Markdown"
keywords: [Markdown, Ficheros, Rendimiento]
subtitle: "Acceso a disco, tiempos de escritura, scripting,..."
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title.pdf"
...

# Escritura en Disco

Ahora que ya hemos visto algunas de las herramientas de gestión de los procesos
vamos a trabajar con una serie de ejercicios que ejecutarán diferentes acciones
sobre el sistema de ficheros. 

Estas acciones serán de *lectura/escritura* dependiendo del ejercicio que estemos
realizando. Es muy importante que vayamos investigándo *cómo* funcionan estos 
pequeños programas ya que serán de utilidad para la realización de las prácticas.

## Repaso de comandos útiles

### time

Nos devuelve el tiempo de ejecución de un proceso cuando finaliza
Ejemplo

`$ time echo "Hola Mundo"`

```shell
Hola Mundo
real	0m0,000s
user	0m0,000s
sys	    0m0,000s
```
Si le pasamos un proceso más costoso, como haremos más adelante veremos
que el tiempo va aumentando considerablemente.

### dd

**dd** es uno de los comándos más *útiles* que un buen Administrador de Sistemas
debe conocer. Se trata de un comando que nos permite realizar operaciones *a bajo nivel*
sobre los discos duros, particiones, ficheros, etc. Una poderosísima herramienta que 
debéis conocer, ya que os será muy útil en vuestras tareas de administración, sin embargo, al ser una herramienta muy potente es recomendable que la ejecutéis con mucho 
cuidado, ya que puede borrar discos, romper particiones, etc.

*--Un gran poder conlleva una gran responsabilidad--*

Vamos a ver ahora una serie de ejemplos que os servirán para ir comprendiendo
algunos conceptos.

La salida de este comando:

`$ dd if=/dev/zero of=/tmp/fichero-de-un-megabyte.dd bs=1M count=1`

```shell
1+0 registros leídos
1+0 registros escritos
1048576 bytes (1,0 MB, 1,0 MiB) copied, 0,00238664 s, 439 MB/s
```

Nos indica que han sido copiados 1 *Bloque* del tamaño de 1 *Megabyte* de *zeros* provenientes
del dispositivo especial de GNU/Linux `/dev/zero`.

Si le hechamos un vistazo a `/tmp/` veremos que ha aparecido un fichero nuevo:

`$ ls -lahG  /tmp/fiche*`

```shell
-rw-rw-r-- 1 smx 1,0M ene 23 16:30 /tmp/fichero-de-un-megabyte.dd
```

### Usos de *dd*

No hace falta que los ejecutéis, basta con que leáis el comando y comprobéis 
cómo se altera su funcionamiento.

---

`$ dd if=/dev/sda of=/tmp/mbr.dd bs=512 count=1`

Copia el *mbr* del disco /dev/sda a un fichero. Puede ser útil para realizar 
pruebas de arranque.

---

`# dd if=/dev/sda4 of=/tmp/disco-completo.dd bs=4M`

Genera una copia *completa* de toda la partición del primer disco (`/dev/sda4`) a un fichero. El fichero resultante ocupa el espacio **completo** de la partición, incluidos
los bloques vacios. Se a ido copiando a bloques de 4 Megabytes.

---

## fdisk

*fdisk* nos permite realizar operaciones sobre particiones de un disco, leer, cambiar el tipo de partición, obtener el tamaño, crear nuevas,...

A continuación vamos a repasar las opciones más habituales para la creación de una partición.

`# fdisk /dev/sdb`

```shell
Los cambios solo permanecerán en la memoria, hasta que decida escribirlos.
Tenga cuidado antes de utilizar la orden de escritura.

El dispositivo no contiene una tabla de particiones reconocida.
Se ha creado una nueva etiqueta de disco DOS con el identificador de disco 0xdcac78d2.

Orden (m para obtener ayuda): 
```

Ahora `fdisk` se queda en modo *interactivo* y podéis ir indicándole las operaciones que
deseamos realizar. Si en algún momento necesitamos ayuda podemos pulsar la tecla `m`.

Ayuda:

```shell
Ayuda:

  DOS (MBR)
   a   conmuta el indicador de iniciable
   b   modifica la etiqueta de disco BSD anidada
   c   conmuta el indicador de compatibilidad con DOS

  General
   d   borra una partición
   F   lista el espacio libre no particionado
   l   lista los tipos de particiones conocidos
   n   añade una nueva partición
   p   muestra la tabla de particiones
   t   cambia el tipo de una partición
   v   verifica la tabla de particiones
   i   imprime información sobre una partición

  Miscelánea
   m   muestra este menú
   u   cambia las unidades de visualización/entrada
   x   funciones adicionales (sólo para usuarios avanzados)

  Script
   I   carga la estructura del disco de un fichero de script sfdisk
   O   vuelca la estructura del disco a un fichero de script sfdisk

  Guardar y Salir
   w   escribe la tabla en el disco y sale
   q   sale sin guardar los cambios

  Crea una nueva etiqueta
   g   crea una nueva tabla de particiones GPT vacía
   G   crea una nueva tabla de particiones SGI (IRIX) vacía
   o   crea una nueva tabla de particiones DOS vacía
   s   crea una nueva tabla de particiones Sun vacía

```
---

En este caso lo que haremos será crear una nueva partición (letra `n`).

---

```shell
Tipo de partición
   p   primaria (0 primaria(s), 0 extendida(s), 4 libre(s))
   e   extendida (contenedor para particiones lógicas)
Seleccionar (valor predeterminado p): 
```

Nos pregunta por el tipo de partición, por ahora marcaremos *primaria* (opción por defecto).

---

```shell
Número de partición (1-4, valor predeterminado 1):
```

Ahora nos pregunta por el número de la partición, al ser la primera nos ofrece el valor 1.

---

```shell
Primer sector (2048-4095999, valor predeterminado 2048):
```

Crearemos la partición desde el sector 2048.

---

```shell
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-4095999, valor predeterminado 4095999): 
```

Ahora nos pide el tamaño de la partición, podemos indicárselo en Kilobytes, Megabytes,...o mediante sectores. Por defecto el nos ofrece utilizar todo el espacio disponible, sin embargo sería posible generar una partición de 1GB y luego otra más adelante. Vamos a indicarle que queremos una partición de **1GB**, utilizando el valor `+1G`.

```shell
Crea una nueva partición 1 de tipo 'Linux' y de tamaño 1 GiB.
```

*fdisk* nos indica que se ha creado una nueva partición de tamaño 1GiB.

---

Para salir y *escribir* los cambios en el dispositivo debemos pulsar la tecla `w` (*write*).

```shell
Orden (m para obtener ayuda): w
Se ha modificado la tabla de particiones.
Se están sincronizando los discos.
```

## Tarea 01

Cread una partición más en el disco (`/dev/sdb2` ) cuyo tamaño sea el más grande posible. Al finalizar esta tarea debemos tener 2 particiones en el disco:

| Partición | Tamaño|
|:---------:|:-----:|
| /dev/sdb1 | 1GB|  
| /dev/sdb2 | *Restante*|

Para comprobar que esto es así podemos ejecutar el comando:

`fdisk -l /dev/sdb`

\newpage

## mkfs

*mkfs* es el comando que nos permite generar un sistema de ficheros (*MaKe FileSystem*)
en una determinada partición. Existen multitud de sistemas de ficheros diferentes:

- ext4
- NTFS
- FAT32
- FAT16
- exFAT
- btrfs
- reiserFS
- XFS
- GlusterFS
- ...

No es objetivo de esta que los conozcáis todos, pero sí que cada uno de ellos presenta 
una serie de ventajas e inconvenientes y que no todos sirven para todo, y que deberemos
elegir con cuidado dependiendo de la situación en la que vayamos a instalar, configurar, etc.

Por ahora utilizando esta tabla como referencia, estableced los sistemas de ficheros en las particiones anteriormente creadas:

| Partición | Comando | Sistema de ficheros final |
|:---------:|:-------:|:-------------------------:|
| /dev/sdb1 | mkfs.ntfs| NTFS|
| /dev/sdb2 | mkfs.vfat| FAT32|

Un ejemplo de ejecución sería:

`sudo mkfs.vfat /dev/sdb2`

![Atencion](imgs/Gremlin-nob.png){ width=25% }\

**¡Cuidado!** Un paso en falso y borrarás el sistema de archivos. Debéis manejar esto con atención.

\newpage

## mount

Ahora ya tenemos los sistemas de ficheros y las particiones hechas, nos falta establecer los
*puntos de montaje*. ¿Qué es un punto de montaje?

Si buscamos este concepto en la *Wikipedia* aparece este texto:

>Cada dispositivo de disco (disco duro, CD-ROM, pendrive, etc.) aloja un sistema de archivos que, conceptualmente, no es más que un árbol de directorios. Dicho árbol puede ser integrado en el árbol único de Unix utilizando un punto de montaje. El punto de montaje es cualquier directorio a partir del cual se visualizará el sistema de archivos montado. Si el punto de montaje contenía ficheros, estos desaparecerán, para visualizar los del dispositivo montado.

Básicamente consiste en asignar una carpeta como punto de entrada a los ficheros
y directorios que ya se encuentran presentes en el sistema de ficheros del dispositivo.

Esto es un concepto muy curioso y que da lugar gran cantidad de operaciones que se pueden
realizar desde sistemas de ficheros remotos, herramientas forenses, etc. 

¿Cómo se realiza un montaje? Pues podemos efectuarlo de dos maneras:

- Estableciéndolo en el fichero del Sistema Operativo que monta los diferentes dispositivos 
   al arrancar.
- Manualmente para hacer pruebas u operaciones *no persistentes*.

Para la realización de las pruebas (por ahora) utilizaremos la línea de comandos (*a.k.a. Terminal*).

La orden que realiza el montaje es : `mount`.

El modo básico es : 

`$ sudo mount DEVICE MOUNTPOINT`

Donde:

- `DEVICE` : Es el dispositivo que queremos montar.
- `MOUNTPOINT` : Es la carpeta del *Sistema de ficheros actual* que nos servirá de enlace
  entre *ambos mundos*.

En este modo, el comando `mount` intentará *averiguar* por si mismo *qué tipo de sistema de ficheros* contiene el dispositivo que estamos montando. En caso de que no lo averigue, se le puede indicar al comando utilizando el parámetro `-t`, veamos un ejemplo:

`$ sudo mount -t ext4 /dev/sdb2 /mnt/`

Esta orden intentará montar la partición 2 del segundo disco duro en la carpeta `/mnt` y para
trabajar con los ficheros que contiene utilizará el sistema de ficheros `ext4`. En caso de que ocurra un error, el comando mount fallará y deberéis arreglarlo ^_^.

## Tarea 02 

Las dos particiones que tenéis creadas de la tarea anterior vamos a montarlas en dos carpetas diferentes:

- /mnt/mme-ntfs
- /mnt/mme-fat32

Para ello deberéis crear primero las carpetas y luego ejecutar el comando `mount` para que cada una acabe accesible desde la carpeta adecuada:

| Dispositivo | Punto de montaje|
|:-----------:|:----------------:|
| /dev/sdb1   | /mnt/mme-ntfs|
| /dev/sdb2   | /mnt/mme-fat32|

Ejecutad el comando : `$ fdisk -l | grep sdb1` y comprobad que las líneas que aparecen 
son las de vuestros puntos de montaje y que todo está correcto.

Adjuntad captura de pantalla de la salida de ese comando.

# Scripts y pruebas

Más adelante en el curso veremos diferentes herramientas de *pruebas de rendimiento*, pero 
por ahora vamos a realizar una serie de *Scripts* que crearán ficheros en los puntos
de montaje que acabamos de crear. 

Los *scripts* van a generar una serie de ficheros de diferentes tamaños en nuestras carpetas, 
para ver como se llena el espacio disponible y cómo se accede a los diferentes ficheros.

Como resumen del *script* podríamos decir:

* Para la creación de ficheros utilizaremos `dd`.
* Para repetición de la creación utilizaremos `for`
* Para la comprobación de donde nos encontramos utilizaremos `if`, `pwd` y `test`.

La tarea consiste en crear varios Scripts que resuelvan diferentes problemas:

- Asegurarnos de que nos encontramos en las carpetas correcta.
- Comprobar que podemos escribir en esa carpeta.
- Crear diferentes ficheros, de diferentes tamaños.
- Algunas cosas más.

## Misión 00

Generar un script que una vez copiado a la carpeta `/mnt/mme-ntfs` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio y si es así que genere
10 ficheros de 1 MB cada uno que se llamen:

- fich-1mb-1.iso
- fich-1mb-2.iso
- ....

Esta misión tutorial se resolvería con el siguiente script copiado a la carpeta `/mnt/mme-ntfs`

```shell
#!/bin/bash

# Sanity Checks
# Are we in the correct place?
if [ $(pwd) != "/mnt/mme-ntfs" ]; then
   echo " Wrong execution place !"
   exit 1
fi

# Can we write here?
touch test-if-i-can-write.txt || true

if [ ! -f test-if-i-can-write.txt ];then
   echo " I cannot write here !"
   exit 1
fi

# Remove the file (for cleaning)
rm test-if-i-can-write.txt

# Now create the files
for i in $(seq 1 10); do
   dd if=/dev/zero of=fich-1mb-$i.iso bs=1M count=1
done

exit 0
```
\newpage

Algunos consejos para la realización de las misiones siguientes:

- Cread los *scripts* en una carpeta en vuestra carpeta personal y copiadlos 
  para la ejecución para cada prueba. No editeis los scripts en `/mnt/*`
- Los scripts es recomendable que tengan nombres como:
  - `mision-01-mme.sh`
  - `mision-02-mme.sh`

## Misión 01

Generar un script que una vez copiado a la carpeta `/mnt/mme-ntfs` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio y si es así que genere
15 ficheros de 2 MB a bloques de 512K y que se llamen:

- mission-01-file-2mb-1.iso
- mission-01-file-2mb-2.iso
- ...

## Misión 02

Generar un script que una vez copiado a la carpeta `/mnt/mme-fat32` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio y si es así que genere
100 ficheros de 3 MB a bloques de 256K y que se llamen:

- mission-02-file-3mb-1.iso
- mission-02-file-3mb-2.iso
- ...

## Misión 03

Generar un script que una vez copiado a la carpeta `/mnt/mme-ntfs` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio y si es así que genere
300 ficheros de 100KB a bloques de 50KB y que se llamen:

- mission-03-file-100k-1.iso
- mission-03-file-100k-2.iso
- ...

\newpage

## Misión 04

Generar un script que una vez copiado a la carpeta `/mnt/mme-ntfs` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio, que borre todos los ficheros de la mision 01 y que genere un fichero de 500MB a bloques de 4MB, que se llame:

- mission-04-largefile.iso
- ...

## Misión 05

Generar un script que una vez copiado a la carpeta `/mnt/mme-fat32` compruebe que está 
en ese directorio, que puede escribir ficheros en ese directorio, que borre los ficheros de las misiones anteriores de esta carpeta y que genere 1000 ficheros de 10KB, indicando en cada fichero cómo se llama por pantalla:

- mission-05-file-10k-1.iso
- mission-05-file-10k-2.iso
- ...

## Misión 06 - Limpieza

Genera un script que borre todos los ficheros generados por las misiones anteriores y prepare 
el entorno (*environment*) para la ejecución *limpia* de determinadas pruebas que veremos más adelante.

Debe indicar cada carpeta que está *limpiando*, ejemplo de ejecución:

`$ ./mission-06-clean.sh`

```shell
* Cleaning /mnt/mme-ntfs/
* Cleaning /mnt/mme-fat32/
```

Este script en concreto podría llamarse: `mission-06-clean.sh`.

\newpage

# Estadísticas y time

Ahora que ya tenemos la capacidad de generar entornos llenos de ficheros de diferente tamaños, utilizando
nuestras propias herramienta (`crafting`), vamos a realizar una serie de acciones con la intención
de comprobar y medir algunas de las operaciones más habituales de acceso a discos duros.

Vamos utilizar `time` para ir tomando medidas de la ejecución de nuestros scripts de las misiones anteriores y ademas de la copia y el borrado de los ficheros en diferentes situaciones.

Rellena una tabla en *LibreOffice* con las siguientes filas y columnas:

| Operación | real | user | sys | 
|:---------:|:----:|:----:|:---:|
| mision 01 |      |      |     |
| mision 02 |      |      |     |
| mision 03 |      |      |     |
| mision 04 |      |      |     |
| mision 05 |      |      |     |
| mision 06 |      |      |     |
| mision 07 |      |      |     |
| mision 08 |      |      |     |
| mision 09 |      |      |     |
| mision 10 |      |      |     |

Las misiones de la 7 en adelante están descritas a continuación:

## Misión 07

Vacia ambos directorios de /mnt/, ejecuta los scripts de la misión 01 y 03 y copia todos los ficheros generados a la carpeta /mnt/mme-fat32. Toma medidas de la copia solamente.

## Misión 08

Vacia ambos directorios de /mnt/, ejecuta los scripts de la misión 01 y 04 y copia todos los ficheros generados a la carpeta /mnt/mme-fat32. Toma medidas de la copia solamente.

## Misión 09

Vacia ambos directorios de /mnt/, ejecuta los scripts de la misión 02 y 05 y copia todos los ficheros generados a la carpeta /mnt/mme-ntfs. Toma medidas de la copia solamente.

## Misión 10

Vacia ambos directorios de /mnt/, ejecuta los scripts de la misión 01, 03 y 04 y copia todos los ficheros generados a la carpeta /mnt/mme-fat32. Toma medidas de la copia solamente.

\newpage

## ¡Misión extra!

Hemos utilizado el comando `time` para extraer diferentes tiempos, que hemos rellenado en la hoja de cálculo, vamos ahora a automatizar todo esto, de tal manera que en vez de utilizar el LibreOffice, usaremos ficheros de `CSV` (*Comma Separated Values*), que son ficheros en cuyo interior los datos están separados por un carácter "`;` o `,`" que indica las diferentes columnas.

`time` es un *bash-builtin*, esto hace que su salida se deba tratar de una manera 
un poco especial. Para redirigir la salida del comando `time`, será mejor que utilicemos
técnicas como la siguiente:

`$ { time COMAND ARGS ; } 2> /tmp/time.txt`

Y luego procesaremos el fichero `/tmp/time.txt` para extraer la información que nosotros
necesitemos.

`$ cat /tmp/time.txt`

```shell
real	0m0,008s
user	0m0,001s
sys     0m0,007s
```

Vamos a pasarlo a un formato más *csv-friendly*:

`$ cat /tmp/time.txt | sed "/^$/d" | sed -e "s%[[:space:]]%;%g" | tr "\n" ";"`

```shell
real;0m0,008s;user;0m0,001s;sys;0m0,007s;
```

Si realizáis la prueba en vuestras máquinas, observaréis que no se genera un *salto de línea* al final de cada ejecución, así que vamos a preparar un *script* sencillo que al ejecutarlo indicándole
como argumento la ruta a un fichero de estádisticas (`/tmp/time.txt` por ejemplo), nos añada las estadísticas a un fichero acumulado que vamos a situar en nuestra carpeta personal:

```shell
#!/bin/bash
RUTA_AL_ACUMULADO="$HOME/acumulado.csv"

# En $1 tenemos la ruta al fichero que queremos procesar
# comprobaremos que existe primero.
if [ -f $1 ]; then
   RESULTS=$(cat $1| sed "/^$/d" | sed -e "s%[[:space:]]%;%g" | tr "\n" ";")
   echo "$RESULTS" >> "$RUTA_AL_ACUMULADO"
else
   echo " No existe el fichero indicado "
   exit 1
fi

exit 0
```

De esta manera podemos generar diferentes estadísticas y luego procesarlos fichero de resultados
para generar un único acumulado, que al abrirlo con *LibreOffice* nos dará la posibilidad
de tratarlo como una *hoja de cálculo*.

Plantea las misiones de la 7 a la 10 como scripts, y ejecutalos guardando la salida en diferentes ficheros y luego procésalos con el script que acabamos de ver.







