---
title: "[ Unit 05 ] : Permissions - Chapter 1"
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

Fill the table with the information about the behaviour of the permissions on files and directories. 

| Permissions   | Files  |  Directories |
|---------------|:------:|:------------:|
| read (r)      |        |              |
| write (w)     |        |              |
| execution (x) |        |              |


# Task 02

Code a Shell Script that creates an environment for testing permissions in the next scripts. The Script must:

- Clean the contents of the directories on the `$HOME` directory which names matching `test-permissions-*`. **BE CAREFUL**.
- Test if the directory : $HOME/test-permissions-DATE-OF-TODAY in format (YYYYMMDD) exists and if not exists, create it.
- Change the directory of execution to that directory.
- Create several files:

  - `onlyUserCanRead.txt`
  - `onlyUserAndGroupCanRead.txt`
  - `onlyUserAndOthersCanRead.txt`
  - `onlyUserCanReadAndWrite.txt`
  - `onlyUserAndGroupCanReadAndWrite.txt`
  - `onlyUserAndOthersCanReadAndWrite.txt`
  - `onlyUserAndOthersCanReadAndWrite.txt`
  - `onlyUserAndOthersCanReadAndExecute.txt`
  - `onlyUserAndGroupsAndOthersCanReadAndExecute.txt`
  - `onlyUserAndGroupsAndOthersCanReadAndWriteAndExecute.txt`

 - Apply the permissions to each file that can be read with their names.

# Task 03

Code  a Shell Script that using the files that can be created with the script of the *Task 02*, must:

 - Show the date of today and if exists some directory in `$HOME/test-permissions-DATE-OF-TODAY`. If not exists, the script must end with a simple message: `* DIRECTORY NOT FOUND FOR TODAY * `
 - If the directory exists, then:
   - Show first all the files that can be read by Others.
   - Secondly all the files that can be written by User.
 - The script must *TEST* each file and take the decissions on each execution, is not about *echo* mechanisms.


