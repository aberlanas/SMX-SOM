---
title: "[ Unit 05 ] : What Is a Path? (And Other File System Facts)"
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

# What is a Path?

Read the *Oracle Documentation* about Paths and Other File System Facts:

- [What is a Path?](https://docs.oracle.com/javase/tutorial/essential/io/path.html)

After that, answer the next questions (in English).

## Task 01 (1,5 points)

What is the difference between an *absolute path* and a *relative path*?. 

## Task 02 (1,5 points)

If the permissions of a symbolic link are:

```shell
lrwxrwxrwx
```

What permissions *effectively* will be applied to the users operations?

## Task 03 (7 points)

Code a Shell script that accepts as a first argument a relative path to a **valid** *symbolic link*. And test if the current user can read, write and execute the target of the link.

In order to test this script, you must create a environment with some links and different files with different permissions.

