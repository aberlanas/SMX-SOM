---
title: "UD03 - Practica 03 - Escribiendo en Disco"
author: [Diego Carrasco]
date: "2021-01-23"
subject: "Markdown"
keywords: [Markdown, Ficheros, Rendimiento]
subtitle: "Acceso a Disco, tiempos de escritura"
lang: "es"
page-background: "../rsrc/backgrounds/background7.pdf"
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
- ...

No es objetivo de esta que los conozcáis todos, pero sí que cada uno de ellos presenta 
una serie de ventajas e inconvenientes y que no todos sirven para todo, y que deberemos
elegir con cuidado dependiendo de la situación en la que vayamos a instalar, configurar, etc.

Por ahora utilizando esta tabla como referencia, cread los sistemas de ficheros en las particiones anteriormente creadas:

| Partición | Comando | Sistema de ficheros final |
|:---------:|:-------:|:-------------------------:|
| /dev/sdb1 | mkfs.ntfs| NTFS|
| /dev/sdb2 | mkfs.vfat| FAT32|

Un ejemplo de ejecución sería:

`sudo mkfs.vfat /dev/sdb2`

![Atencion](imgs/Gremlin-nob.png){ width=25% }\

**¡Cuidado!** Un paso en falso y borrarás el sistema de archivos. Debéis manejar esto con atención.








