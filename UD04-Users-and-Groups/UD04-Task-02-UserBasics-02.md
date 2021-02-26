---
title: "[ Unit 04 ] : Users and Groups : Basic Scripts 01"
author: [Angel Berlanas Vicente]
date: "2021-02-16"
subject: "Markdown"
keywords: [Markdown, Users, Groups]
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
...

# Task 01

Code a Shell Script in GNU/LinuX which show the HOME Directory for each user logged in the system. 

*Repeated HOME Directories are Welcome*

# Task 02

Code a Shell Script in GNU/LinuX that ask for a username to the user and show the HOME Directory of that 
username (if this user exists), if the username given is incorrect the script will show us an error message.

# Task 03 

Code a Shell Script in GNU/LinuX that show only the current user id and the password (in hashshum representation).

# Task 04

Code a Shell Script in GNU/LinuX that test for each user in the system and show their home directories and if them exists.

example:

```shell
root --> /root ( Exists)
daemon --> /usr/sbin ( Exists)
bin --> /bin ( Exists)
sys --> /dev ( Exists)
sync --> /bin ( Exists)
games --> /usr/games ( Exists)
man --> /var/cache/man ( Exists)
lp --> /var/spool/lpd ( Not exists)
mail --> /var/mail ( Exists)
news --> /var/spool/news ( Not exists)
uucp --> /var/spool/uucp ( Not exists)
.....
.....
postfix --> /var/spool/postfix ( Exists)
tic --> /home/tic ( Exists)
profe --> /home/profe ( Exists)
alumno --> /home/alumno ( Exists)
nvidia-persistenced --> /nonexistent ( Not exists)
espectador --> /home/espectador ( Exists)
gdm --> /var/lib/gdm3 ( Exists)
```

# Task 05

Write a list of three commands that can be used in order to get the current user details (Full Name, Last Name, ...)