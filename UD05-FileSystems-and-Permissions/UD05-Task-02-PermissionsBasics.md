---
title: "[ Unit 05 ] : Permissions - Chapter 2"
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
...

# Task 01

Code a Shell script that creates the next folder structure (only folders not files):

```shell
./TheFellowshipOfTheRing
./TheFellowshipOfTheRing/Aragorn
./TheFellowshipOfTheRing/Boromir
./TheFellowshipOfTheRing/Frodo
./TheFellowshipOfTheRing/Gandalf
./TheFellowshipOfTheRing/Gimli
./TheFellowshipOfTheRing/Legolas
./TheFellowshipOfTheRing/Merry
./TheFellowshipOfTheRing/Pippin
./TheFellowshipOfTheRing/Sam
./TheReturnOfTheKing
./TheTwoTowers
12 directories, 0 files
```

All of the directories under `TheFellowshipOfTheRing` must be owned by the user `smx` or `smx2b`. And the permissions must be:

```shell
drwxr-x---
```

# Task 02

Code a ShellScript that creates under `TheTwoTowers` and `TheReturnOfTheKing` folder *symbolic links* to the characters presents in the first book of the Trilogy.

Gandalf link name must be `Gandalf-TheGrey` in the `TheTwoTowers` Folder and `Gandalf-TheWhite` in the `TheReturnOfTheKing` And Boromir must not be linked.

Aragorn must be linked as `TheKingOfGondor` under the `TheReturnOfTheKing` folder.

# Task 03

Code a ShellScript that *tests* if all the links created in the Task 02:

- They have the correct name.
- They are not broken.
- The target is the correct.
- The permissions of all of them are : `lrwxrwxrwx`.