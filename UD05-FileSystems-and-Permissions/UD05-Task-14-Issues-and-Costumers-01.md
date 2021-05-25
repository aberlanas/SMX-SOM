---
title: "[ Unit 05 ] : Issues, Customers and Bombs"
author: [Angel Berlanas Vicente]
subject: "Markdown"
keywords: [Markdown, Permissions, Files]
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

All of these questions (except the first one) must be answered in English.

In this Exam we will simulate

# Help Charts

Write the answers in a *e-mail* reponse form. Simulating that the issue has been comunicated by e-mail.

| Points of Interest Table |
|--------------------------|
|Good language use is a must|
|Read all the exam before start|

\newpage
# Task 01 (3 points) - Spanish Available.

**First Floor Bomb: ESO**, 

To: Bomb Deactivation Squad Support Team <support@bombs.uk>
Subject: I have a bomb in the first floor.

I can't edit the file at `/etc/apt/sources.list` in order to add the repo:

```shell
# Bombs tool deactivation kit
deb http://bombs.uk/ubuntu focal main
```

I cannot only add the lines at the end of the file, I must check the file in order to
revise possible wrong lines.

I try to contact with our *sysadmin* to rise permissions, but he is a total *Noob* and 
only know how to run scripts as a superuser....

How can I edit the file and create a shell script that *replaces* the original file, with permissions and everything? The machine is an Xubuntu 20.04.

Please....HELP!

--John Doe 

\newpage
# Task 02 (3 points) - Only English

**Second Floor Bomb: Bachelor**, 

To: Bomb Deactivation Squad Support Team <support@bombs.uk>
Subject: Second floor: a bomb.

I have an `.iso` file with the code of the bomb deactivation called: `second-floor.iso`, I am trying to copy the file inside with the relative path from the `iso` **ROOT** path:

```shell
./keys/secret.top
```

But when i run (with the superuser password) the next script i get an ugly message:

```shell
#!/bin/bash

MOUNTING_ISO=$1

mount -o loop $1 /home/PLACE-YOUR-USER-HERE/bombtools
cp /home/PLACE-YOUR-USER-HERE/bombtools/secret.top $HOME/
cat ./secret.top
```

The desired output is the content of the secret.top file inside the iso. 

The error message is:

```shell
mount: bombtools: mount point does not exist.
```

Please, fix the script and explain how to use it.

Help!

-- John Smith

\newpage
# Task 03 (4 points) - Only English

**Third Floor Bomb: Vocational Education**

To: Bomb Deactivation Squad Support Team <support@bombs.uk>
Subject: Third floor, users and bombs.

Help!
I have a shell script that must create user and groups and apply permissions to 
deactivate the bomb in this floor, but when I execute it with `sudo` , nothing happens!

```shell
#!/bin/bash

if [ $(id -u) -eq 0 ]; then
    exit 0
fi

echo "1234" > /tmp/deactivation-key-floor-3th.key

# Creating the deactivation key, must be a link to the key created 

ln -s $HOME/bomb/deactivation /tmp/deactivation-key-floor-3th.key 

# User : bombdeactivator
# Group: squadgroup

adduser bombdeactivator
adduser squadgroup bombdeactivator
chown squadgroup:bombdeactivator $HOME/bomb/deactivation
chmod 666 $HOME/bomb/deactivation

```

The script must be executed and the **REAL FILE** must have the correct permissions. The script shows nothing, but I think that the script has 5 lines with *BUGS*.

Please Help ME!

--Guybrush Threepwood