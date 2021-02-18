---
title: "[ Examen ] Procesos y Red - Grupo B"
author: [Angel Berlanas Vicente]
date: "2021-02-17"
subject: "Markdown"
keywords: [Markdown, Ficheros, Rendimiento]
subtitle: "Grupo B"
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
| P3       |                            5 |      |      |     |
| P4       |                            4 |      |      |     |


# Tarea 02 : Algoritmo SRTF (3 puntos)

Dados los siguientes procesos, el tiempo de llegada de los mismos y su
coste, averiguad los tiempos de finalización de los procesos,
indicándolo en las tablas que hemos realizado en clase.

| Procesos |  Coste de Ejecución (Ciclos)  | Tiempo de llegada|
|:--------:|:-----------------------------:| :---------------:|
|P1        | 3                             |1                 |
|P2        | 1                             |2                 |
|P3        | 2                             |2                 |
|P4        | 4                             |2                 | 
|P5        | 1                             |3                 |
|P6        | 3                             |4                 |
|P7        | 5                             |4                 |

# Tarea 03 - Script Procesos (2,5 puntos)

Realizad un Shell Script que pida por entrada estándar un *login*. A continuación debe mostrar de los procesos en ejecución de todos los usuarios del sistema, aquellos procesos cuyo propietario sea el usuario indicado.

En la salida debe mostrarse tan solo el `PID`, la hora a la que comenzó a ejecutárse y la ruta al *Ejecutable* (último campo).

Por último mostrará el número de procesos de ese usuario en ejecución.

Ejemplo:

```shell
 * Dime un usuario : aberlan 
5809 16:37 /usr/libexec/gvfsd-trash
6089 16:38 /home/aberlanas/bin/Telegram/Telegram
6357 16:41 /snap/chromium/1479/usr/lib/chromium-browser/chrome
6506 16:44 /snap/chromium/1479/usr/lib/chromium-browser/chrome
6770 16:49 /usr/lib/x86_64-linux-gnu/tumbler-1/tumblerd
6971 16:52 /usr/libexec/tracker-store
6981 16:52 /bin/bash
6982 16:52 ps
6983 16:52 grep
6984 16:52 tr
6985 16:52 cut
 El usuario tiene : 11 procesos
```
# Tarea 04 - Script Red (2,5 puntos)

Realizad un script que muestre primero cuantas tarjetas de red tiene un sistema (Incluida loopback), así cómo su nombre de dispositivo.

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