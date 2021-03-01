---
title: "[ Unit 04 ] : Crontab and Users"
author: [Angel Berlanas Vicente]
date: "2021-03-01"
subject: "Markdown"
keywords: [Markdown, Users, Groups, Crontab]
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

Using `crontab` setup a Shell Script that must be launched every minute and log into the `syslog` which are the users that are logged in the system in this time.

Hints:

* `/var/log/syslog`
* `logger`
* `who`

Example of execution of : `tail -f /var/log/syslog` with the Crontab correctly configured:

```shell
...
Mar  1 18:56:01 erebor aberlanas: aberlanas tty7 2021-03-01 18:44 (:0)
...
```


Make an screenshot of the output of :

`crontab -l`

In addition to the script to solve the task.

# Task 02

Using crontab, code a Shell Script that shows the use of the RAM (at the `syslog` with `logger`)
(only the percentage) and prepare crontab to run it each 30 seconds.

Example of execution of : `tail -f /var/log/syslog` with the Crontab correctly configured:

```shell
...
Mar  1 19:16:01 erebor aberlanas: RAM 87% Free
Mar  1 19:16:31 erebor aberlanas: RAM 88% Free
...
```