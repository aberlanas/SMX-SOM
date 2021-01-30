---
title: "[ Práctica ] Procesos y Scripts"
author: [Angel Berlanas Vicente]
date: "2021-01-23"
subject: "Markdown"
keywords: [Markdown, Ficheros, Rendimiento]
subtitle: "Procesos, prioridad, PIDS,..."
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title.pdf"
...

# Scripts sobre procesos

Vamos a realizar una serie de Scripts con algunas operaciones básicas
sobre los procesos.

## Script 00

Este Script ya fué planteado en Aules, pero puede servir de repaso.

Realizad un Script que pregunte al usuario por una palabra, busque mediante 
comandos aquellos procesos que contengan dicha palabra y los cierre.

Some *useful* commands:

|Command| Description |
|-------|--------|
| `ps -aux`| report a snapshot of the current processes|   
| `grep PATTERN` | print lines that match patterns|
| `kill -9`| send a signal to a process (-9 stops the process)|
| `tr -s` | translate or delete characters (-s replace each sequence of a repeated character that is listed) |
| `read` | read from standar input|

## Script 01

Cuando queremos ejecutar algo y que se quede en *background* podemos ejecutarlo
añadiendo al final del comando el símbolo `&`, por ejemplo:

```shell
mate-calc &
```

Devolverá el foco a la terminal, permitiéndonos seguir ejecutando comandos y lanzará 
en *background* la calculadora (por ejemplo).

Crea un pequeño script que muestre un menú y que le permita al usuario lanzar **en background** las siguientes aplicaciones:

* mate-calc
* dia
* mousepad

Debéis crear una opción adicional pulsando la tecla `q` que salga del script.

| Command | Description |
|---------|-------------|
| `while (CONDITION) do; stuff; done;`   | Repetition structure |

## Script 02


