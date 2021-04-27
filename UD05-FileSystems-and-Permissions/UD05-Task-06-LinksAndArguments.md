---
title: "[ Sudden Exam ] : Links and arguments, The Sudden Death "
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

# Task 01

Make a Shell Script that accepts exactly 3 arguments:

```shell
./script-links-or-death.sh OP TARGET LINKNAME
```

If the arguments number is not *3* the script must exit with an error message, showing the *USAGE* of the Script.

The OPs *Available* are:

- `test`
- `make-symbolic`

The script must check that the OP given is one of these.

## test

If the option setted is `test` the script must check if the TARGET is reachable for the current user and make (if it is possible) the LINKNAME destination path.

Example of Use:

```shell
./script-links-or-death.sh test /var/www/ $HOME/links/amazing/apache
* The OP setted is : test
* The folder /var/www is reachable for the current user
* The folder $HOME/links/amazing/ not exists -> creating it.
* The link creation is ready.
```

## make-symbolic

If the option setted is `make-symbolic` the script must *check* the same tests that when the OP `test` is setted and create a symbolic link in the path given, removing (if previously exists) old symbolic links. 

Example of Use:

```shell
./script-links-or-death.sh make-symbolic /var/www/ $HOME/links/amazing/apache
* The OP setted is : make-symbolic
* Testing first.
* The folder /var/www is reachable for the current user
* The folder $HOME/links/amazing/ not exists -> creating it.
* The link creation is ready.
* The file $HOME/links/amazing/apache not exists, can be created as a link.
* Link creation is done:

$HOME/links/amazing/apache -> /var/www/

```

```shell
./script-links-or-death.sh make-symbolic /var/www/ $HOME/links/amazing/apache
* The OP setted is : make-symbolic
* Testing first.
* The folder /var/www is reachable for the current user
* The folder $HOME/links/amazing/ exists ->  nothing to do.
* The link creation is ready.
* The file $HOME/links/amazing/apache exists, removed.
* Now can be created as a link.
* Link creation is done:

$HOME/links/amazing/apache -> /var/www/

```

