---
title: "[ Examen ] Procesos y Red - Grupo A"
author: [Angel Berlanas Vicente]
date: "2021-02-16"
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
| P1       |                            2 |      |      |     |
| P2       |                            4 |      |      |     |
| P3       |                            3 |      |      |     |
| P4       |                            6 |      |      |     |


# Tarea 02 : Algoritmo SRTF (3 puntos)

Dados los siguientes procesos, el tiempo de llegada de los mismos y su
coste, averiguad los tiempos de finalización de los procesos,
indicándolo en las tablas que hemos realizado en clase.

| Procesos |  Coste de Ejecución (Ciclos)  | Tiempo de llegada|
|:--------:|:-----------------------------:| :---------------:|
|P1        | 3                             |1                 |
|P2        | 2                             |1                 |
|P3        | 4                             |3                 |
|P4        | 3                             |3                 | 
|P5        | 4                             |3                 |
|P6        | 2                             |4                 |
|P7        | 3                             |4                 |

# Tarea 03 - Script Procesos (2,5 puntos)

Realizad un Shell Script que pida por entrada estándar un *username*. A continuación, de la lista de los procesos en ejecución de todos los usuarios del sistema, mostrar tan solo aquellos procesos cuyo propietario sea el usuario indicado.

En la salida debe mostrarse tan solo el `PID` y la ruta al *Ejecutable* (último campo).

Por último mostrará el número de procesos de ese usuario en ejecución.

Ejemplo:

```shell
 * Dime un usuario : aberlan 
1354 /lib/systemd/systemd
1355 (sd-pam)
1360 /usr/bin/pulseaudio
1362 /usr/libexec/tracker-miner-fs
1363 /usr/libexec/gnome-session-binary
1367 /usr/bin/dbus-daemon
1374 /usr/libexec/gvfsd
1389 /usr/libexec/gvfsd-fuse
1395 /usr/libexec/gvfs-udisks2-volume-monitor
 El usuario tiene : 10 procesos
```

Este ejemplo tiene muy pocos procesos lo normal para un usuario gráfico es a partir de 70 procesos.

# Tarea 04 - Script Red (2,5 puntos)

Realizad un script que muestre primero cuantas tarjetas de red tiene un sistema (Incluida loopback).

A continuación pedirá al usuario que indique de qué tarjeta quiere obtener información y este se lo indicará introduciéndo el nombre (`lo`, `eno`, `enp0s5`, ...) de la tarjeta.

La información que se debe mostrar de la tarjeta de red indicada es:

* La IP.
* La Máscara en formato CIDR (/24, /8/,...).
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
 * La red permite hasta 254 hosts
```