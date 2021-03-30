---
title: "[ Units 01-04 ] : The One Hundred Scripts - Collector's Edition"
author: [Angel Berlanas Vicente]
subject: "Markdown"
keywords: [Markdown, Users, Groups]
lang: "en"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Scripts about Users and Groups

A collection of Shell Scripts about users and groups in GNU/LinuX.

# Just a Warm-up

## Script 01

Code a Shell Script that ask for a username via Standar Input (`read`) and show all the System Users that matching in their usernames with the username given.

## Script 02

Code a Shell Script that ask for a username via Standar Input (`read`) and show all the System Users that matching in their usernames with the username given in Uppercase or lowercase.

## Script 03

Code a Shell Script that ask for a username via Standar Input (`read`) and show all the System Users that starts in their usernames with the username given.

## Script 04

Code a Shell Script that ask for a username via Standar Input (`read`) and show all the System Users that starts in their usernames with the username given in Uppercase or lowercase.

## Script 05

Code a Shell Script that ask for a username via Standar Input (`read`) and show all the System Users that starts in their usernames with the username given.

## Script 06

Code a Shell Script that let the user chosing between the next paths:

- `/root/`
- `/home/`
- `/var/`

And after that, shows all the users on the systems which their $HOME are in the selected path.

## Script 07 

Code a Shell Script that uses the first argument given in order show all the users on the System which their `$HOME` matches the argument.

## Script 08 

Code a Shell Scrip that list from all groups on the systems each user that belongs to that group. Each group with their members.

# The continuum improving

## Script 09 

Code a Shell Script that uses the first argument to indicat if the script must list *users* or *groups*. If the first parameter is :
`user`, then the script must take the **second** argument as the *username* and list all the groups of the user given. If the first parameter is : `group`, then the script will use the **second** argument as a *groupname* and list all the users on this group.

Examples of execution:
```shell
usuario@maquina:~$./script-09.sh user tic
 * The groups of the user tic will be displayed:
tic adm sudo
```

```shell
usuario@maquina:~$./script-09.sh group sudo
 * The user of the group sudo will be displayed:
tic
aberlanas
```

## Script 10

Using the script of the task 09 as a base for development make the next improvements (next exercises uses the same base):

- Test that the number of arguments is three or show an error message and exit with error : `exit 1`

## Script 11

Improve the script 10 :

- Test if the user or the group are valid (exists on the system) before execute the commands.
  
## Script 12 

Improve the script 11 :

- Show each group or user from the listed items in separate lines.

```shell
usuario@maquina:~$./script-09.sh user tic
 * The groups of the user tic will be displayed:
tic 
adm 
sudo
```

## Script 13

Improve the script 12:

If the user is member of the group `sudo`, display a message in the same line indicating the `Super-Cow Powers`

```shell
usuario@maquina:~$./script-09.sh user tic
 * The groups of the user tic will be displayed:
tic 
adm 
sudo -> IS A SUPER USER! 
```

## Script 14

Improve the script 13:

Test if the username or groupname given as an argument *not* contains numbers or special characters before attempting to 
manage it.

\newpage 

# Loops and Loops

## Script 15

Code a Shell Script that using the `seq` command displays the numbers between the 100 and 144 using steps of 3. Waiting `0,5` seconds between each number.

## Script 16

Code a Shell Script that displays all the numbers between 80 and 160 that are multiples of 12.

## Script 17

Code a Shell Script that displays all the numbers between 100 and 300 that are multiples of 13 and 3.

## Script 18

Code a Shell Script that displays all the numbers until 1000 that are prime numbers.

## Script 19

Code a Shell Script that displays all the possibles IP in Version 4 in the World.

## Script 20

Code a Shell Script that displays all **prime factors** of a number given as first parameter (argument).

Disclaimer: *prime factors* = Factores Primos (sí, han vuelto en forma de Chapa).

## Script 21

Improve the Script 20 in order to also test that the first argument given is a number (integer).

## Script 22

Improve the Script 21 in order to also test that only *one* argument is given.

## Script 23

Code a Shell Script that calculate the sum of all prime numbers between 1 and 100.

## Script 24

Code a Shell Script that calculate the product of all prime numbers between 1 and 100.

## Script 25

Code a Shell Script that using a number given as a parameter displays the first multiple of it that is also a multiple of 5.