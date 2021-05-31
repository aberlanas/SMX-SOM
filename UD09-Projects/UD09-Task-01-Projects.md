---
title: "[ Unit 06 ] : Projects - Interview"
author: [Angel Berlanas Vicente]
subject: "Markdown"
keywords: [Markdown, Projects, Interview]
lang: "es"
class-options: "landscape"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
header-includes: |
    \usepackage{pdflscape}
---

# Description


# Alvaro, Luca, Ramon

Systems A-SiG

## Software installed 

- Software for creating *fantasy Maps*
- Manuals and Resources, icons, etc.
- OpenStreetMaps and other software.

## Users on System:

- `gmaps`
- `photos`

## Networking

VirtualBox NAT (not 10.0.2.15) with name: **asignet**
With the next ips : 

- IP 192.168.33.10
- MASK /24
- GW 192.168.33.1

## Scripting

Code a Backup Script that creates `tgz` of the Desktop folder of each user every monday at 8:00 or when the user makes double click on a `.desktop` file.

```shell
# make-a-tgz of DESKTOP folder of each $USER to 
# /backups/$USER-YYYYmmDD-hhmm.tgz

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.

\newpage

# Isaac, Ronal

Studio Ghibli Workstation

## Users from the Films

- 2 users at least with usernames from the characters of our films.

## Software installed 

Graphical design

## Disks

3 Disks with 3 partitions each one. Diferent FileSystems for each partition.

The mount points will be:

- `/ghibli/mononoke`
- `/ghibli/totoro`
- `/ghibli/cliff`
- `/ghibli/chihiro`
- `/ghibli/arrietty`
- `/ghibli/castle`
- `/ghibli/winds`
- `/ghibli/firefly`
- `/ghibli/kiki`

## Scripting

Make a Wallpaper with the current month and day from a custom gallery.

```shell
# USAGE: 
# ./wallpaper-today PATH/TO/FOLDER/OF/IMAGES
#
```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.

\newpage

# Tactico, Andres

Python Programming Workstation

## Software installed 

- Python 2.7 
- Python Current
- Python next (future versions)

## Users on System:

- deprecated
- normal
- next 

## Disks

1 Disk of 6G -> 3 partitions.

Mount points at:

`/backup/deprecated`
`/backup/normal`
`/backup/next`

## Setup

CodeFolder on Desktop 

## Scripting

```shell

# make-backup each reboot and every 20:00. 
# storead at /backups/partition-of-$USER/$USER-YYYYMMDD.tar.gz 

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.

And prepare 3 shortcuts for the three python versions on each Desktop.  



\newpage


# Adrian, VictorThin

Transiberian Infraestructure

## Users:

- `baikal`
- `vladivostok`

The user `vladivostok` needs a High Contrast setup for vision problems.

## Disks

3 Disk of 2G 

- `/station/moscow`
- `/station/irkutsk`
- `/station/vladivostok`


## Scripting

```shell

# Script must ask for the train destination
# and calculates the timetable from Moscow to Irkutsk and Vladivostok
# using current date. 

# Improving: Generate the ticket with pandoc (ask for Yago)

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.


\newpage


# Abellan, Los Javis 

Comic creation Software 

## Networking

VirtualBox NAT (not 10.0.2.15) with name: **comicnet**
With the next ips : 

- IP 192.168.100.2
- MASK /24
- GW 192.168.100.1

## Scripting

```shell

# Using a URL given as a FIRST Argument (With " ")
# Generates a ".desktop" file on desktop that opens the URL given..

# USAGE:
# ./script.sh URL NAME-OF-DESKTOP-THAT-MUST-BE-SHOWN.

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.

\newpage

# Dulce, Oscar

Audio and Video Edition Workstation

# Users

From the Palos of the Flamenco choose 4 names and use them as usernames. The pass must be the same as the username.

# Disks

- 1 of 4 GB (NTFS)
- 2 of 2 GB (Fat32 and ext4)

Mount points:

- `/arte/sevilla` (NTFS)
- `/arte/granada` (Fat32)
- `/arte/cordoba` (ext4)


## Scripting

```shell

# Using youtube-dl via CLI, download a video from youtube using the first argument (VIDEOID).
# The script must download and process the audio and video and store it in the $HOME directory of 
# the user that runs the script.

# the audio in mp3
# the video in mp4

# Usage: script-palos-flamenco.sh VIDEOID

# Example of use: 
# script-palos-flamenco DBwk3ta5Kmk

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.


\newpage


# Yago, Luis

PDF Printing

## Networking

VirtualBox NAT (not 10.0.2.15) with name: **comicnet**
With the next ips : 

- IP 192.168.100.2
- MASK /24
- GW 192.168.100.1

## Infraestructure

You need to install a OpenMediaVault machine with additional disk of 10GBs. This disk must be shared by this machine to the network and mounted by the Xubuntu Machine on `/printer/` permanently.

You need to configure a Shared folder mounted from an OpenMediaVault OS (installed in other VM). Using `GlusterFS`.

This shared folder must store al the PDFS printed by the CUPS on the Xubuntu Machine. 

\newpage 

# Cesar, JorgeE.

US. Robotics

## Users

- `daneel`
- `giskard`

## Networking

VirtualBox NAT (not 10.0.2.15) with name: **trantor**
With the next ips : 

- IP 192.168.66.0
- MASK /23
- GW 192.168.66.1

## Disks

2 Disks both with *ReiserFS* and mounted at `/mnt/trantor/` and `/mnt/terminus`.

## Scripting

```shell

# TODO

```

\newpage

# Dr.Tank

Software about Maps: 

- Google Earth.
- OSM.
- Etc.

Install `bzflag` too , and prepare a VideoTutorial about it in English.

## Users

- `zhukov`
- `guderian`

## Networking

VirtualBox NAT (not 10.0.2.15) with name: **antartida**
With the next ips : 

- IP 192.168.110.100
- MASK /23
- GW 192.168.110.1

## Scripting

```shell

# Using a URL given as a FIRST Argument (With " ")
# Generates a ".desktop" file on desktop that opens the URL given..

# USAGE:
# ./script.sh URL NAME-OF-DESKTOP-THAT-MUST-BE-SHOWN.

```

The script must be placed at `/usr/bin/` when it becomes tested in order to be available for all users.

\newpage