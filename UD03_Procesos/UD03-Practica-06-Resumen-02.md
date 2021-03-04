---
title: "[ Examen ] Procesos y Red - Recuperación"
author: [Angel Berlanas Vicente]
date: "2021-03-05"
subject: "Markdown"
keywords: [Markdown, Ficheros, Rendimiento]
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
...

# Tarea 01 : Algoritmos de Planificación (2 puntos)

Dados los siguientes procesos, rellenad la tabla siguiente, indicando
el tiempo de terminación del proceso siguiendo los diferentes algoritmos.

| Procesos | Tiempo de Ejecución (Ciclos) | FIFO | LIFO | SJF |
|----------|:----------------------------:|------|------|-----|
| P1       |                            3 |      |      |     |
| P2       |                            1 |      |      |     |
| P3       |                            4 |      |      |     |
| P4       |                            7 |      |      |     |


# Tarea 02 : Algoritmo SRTF (3 puntos)

Dados los siguientes procesos, el tiempo de llegada de los mismos y su
coste, averiguad los tiempos de finalización de los procesos,
indicándolo en las tablas que hemos realizado en clase.

| Procesos |  Coste de Ejecución (Ciclos)  | Tiempo de llegada|
|:--------:|:-----------------------------:| :---------------:|
|P1        | 5                             |1                 |
|P2        | 1                             |1                 |
|P3        | 2                             |2                 |
|P4        | 3                             |2                 | 
|P5        | 3                             |4                 |
|P6        | 2                             |4                 |
|P7        | 1                             |4                 |

# Tarea 03 - Script Procesos (2,5 puntos)

Realizad un Shell Script que pida por entrada estándar un *username*. A continuación, de la lista de los procesos en ejecución de todos los usuarios del sistema, mostrar tan solo aquellos procesos cuyo propietario sea el usuario indicado.

En la salida debe mostrarse tan solo el `PID` y la ruta al *Ejecutable* (último campo), y en caso de que la ruta al ejecutable no comience por `/` debe indicarlo con el mensaje: "Non Standar: "

Por último mostrará el número de procesos de ese usuario en ejecución.

Ejemplo:

```shell
 * Dime un usuario : aberlan 
1354 /lib/systemd/systemd
1355 Non Standard : (sd-pam)
1360 /usr/bin/pulseaudio
1362 /usr/libexec/tracker-miner-fs
1363 /usr/libexec/gnome-session-binary
1367 /usr/bin/dbus-daemon
1374 Non Standard : [kworker/u16:0-events_unbound]
1389 /usr/libexec/gvfsd-fuse
1395 /usr/libexec/gvfs-udisks2-volume-monitor
 El usuario tiene : 10 procesos
```

Este ejemplo tiene muy pocos procesos lo normal para un usuario gráfico es a partir de 70 procesos.

\newpage
# Tarea 04 - Script Red (2,5 puntos)

Realizad un script que muestre primero cuantas tarjetas de red tiene un sistema (Incluida loopback).

A continuación pedirá al usuario que indique de qué tarjeta quiere obtener información y este se lo indicará introduciéndo el nombre (`lo`, `eno`, `enp0s5`, ...) de la tarjeta.

Si la tarjeta no es ninguna de las disponibles, que vuelva a mostrar el listado y que acompañe un mensaje indicando al usuario que no ha seleccionado una tarjeta válidad.

La información que se debe mostrar de la tarjeta de red indicada es:

* La IP.
* La Máscara en formato CIDR (/24, /8/,...).
* La Máscara en formato 255.*
* Cuantos Hosts hay como máximo en esa red junto con esa máquina.(Esto debe calcularse).

Ejemplo de ejecución:

```shell
usuario@maquina:~$./script-de-red-examen.sh
* Las tarjetas de red conectadas son:
1: lo:
2: enp5s0:
3: enx000ec6d3e152:

 * Dime una tarjeta : enp5s0
 * La IP es : 192.168.1.51
 * La Mascara es : 24
 *               : 255.255.255.0
 * La red permite hasta 254 hosts
```