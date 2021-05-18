---
title: "[ Unit 05 ] : Package Manager 01"
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

All of these tasks must be answered in English.

# Help Charts

On the `Shell Scripts` you must be taking into account:

| Scripts Points of Interest Table |
|--------------------------|
|If the script accepts parameters, you must test the number and the form of them.|
|If the script can show an error message, this message must be clear and customized by ourselves.|
|The output of the script must be *exactly* as the task says.|

On the *Pure Writing Questions*:

| Writing clues |
|---------------|
|Use your own words.|
|Not use the Google Translator or other stuff to writing the sentences from Spanish|
|Not write anything that you don't understand|

# Task 01

Create a shell script that shows the installed version of a package that will be passed as the first argument. If the package not exists, must show the next error messange:

```shell
* Unknown package
```

If the package exists, but it is not installed, the script must indicates this situation and show the version(s) candidate(s).

# Task 02

Using `dpkg`, explain in your own words, what is the behaviour of the execution of this command:

```shell
dpkg --configure -a
```

# Task 03

The command `apt update` will update your software catalog, but what is the command in Ubuntu 20.04 that is recommended to be used in order to **upgrade** your system.

# Task 04

What kind of packages will be shown if you run:

```shell
apt list upgradable
```

# Task 05

What is the purpose of the package `kitty-terminfo`? *Answer this question reading only the apt info of the package, in this case Internet is not allowed.*

# Task 06

Code a Shell Script that accepts a package as a first argument, and if it exists, display all his dependences (versioned) one per line. If the package not exists, the script must display a simple error message. 