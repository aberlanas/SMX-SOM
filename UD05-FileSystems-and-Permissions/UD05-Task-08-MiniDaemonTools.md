---
title: "[ Unit 05 ] : Mini-DaemonTools"
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

In the Japan IT Enterprise we have a new *customer*, a Game Developer from **Paradox Interactive**. This developer (for us is called *Ed.B.*), needs a very special tools for developing his amazing job.

The *tool* (also called *Shell Script*) must accepts several arguments and have different behaviour depending on them.

# Task 01

The script name must be : `mini-daemon.sh`. It must accepts 2 or 3 arguments:

* `./mini-daemon.sh --test path-to-iso`
* `./mini-daemon.sh --mount path-to-iso mount-point`
* `./mini-daemon.sh --mount-noti path-to-iso mount-point` 

## --test

With the `--test` option the script must test if the file given as a second argument exists and have an iso format (`file` command output).

## --mount

With the `--mount` option, the script must test if the file given as second argument *exists*, create the mount-point (if not exists), test if the mount-point is empty (showing a message with the result).

And after that, mount the iso in the *mount-point*. 

## --mount-noti

Do the same as `--mount` option, but additonally to the CLI messages, use `notify-send` in order to notify the user when the script finish.