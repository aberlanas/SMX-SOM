---
title: "[ Unit 04 ] : Local Users on Windows 10 - PowerShell - 02"
author: [Angel Berlanas Vicente]
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
---

# Target

Know how the *Local-Users* Works in Windows Systems.

The documentation about *LocalUsers* can be found in the previous document, and about PowerShell in :

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localuser?view=powershell-5.1

In the IT World the most common kind of users is Local-Users or AD-Users, because the Enterprise can "manage" them.


# Get-LocalUser

Is highly recommended that you run the scripts at the same time than you read the explanation, in order to see the behaviour

The Command `Get-LocalUser` show the Local  Users on the system if you run it without any parameter:

```PowerShell
Get-LocalUser
```
Using the argument `-Name` you can filter by name:

```PowerShell
Get-LocalUser -Name "Administrador"
```

You can use the `Format-Table` command in order to get more detailed info about a user.

```PowerShell
Get-LocalUser -Name "Administrador" | Format-Table
```

## Advanced Knowledge

In the PowerShell you can manage a lot of entities (like users) using the Object Notation. 

Advanced Manual:

 - https://adamtheautomator.com/powershell-objects/

\newpage
# The Ten Tasks

## Task 01

Read the next webpage:

https://www.digitalcitizen.life/should-you-use-local-or-microsoft-account-windows-10/

and make a *Comparation Table* between the two kind of users that are described in the webpage.

## Task 02

Create a Shell Script that ask for a `name`, if the `name` given is a valid Local User Name, show a message like this:

```PowerShell
Habemus user
```

## Task 03

Create a Shell Script that ask for a `name`, if the `name` given is a valid Local User Name, show a message, if not exists as a UserName show a error Message:

```PowerShell
 * [ Error ]: The user not exists.
```

## Task 04

Create a Shell Script that ask for a `name`, if the `name` given is a valid Local User Name, the script must test if the `Desktop` folder of that user exists or not exists (*that's the question...*).

## Task 05

Create a Shell Script that ask for a `name` and a `folder`, if the Users exists and has a `$HOMEDIRECTORY` at `C:\Users\` then create a folder in his/her `$HOMEDIRECTORY` with the folder given.

## Task 06

Improve the script of the Task 05 in order to not failing if the `folder` name given already exists.

## Task 07

Get the same result of the task 06 using another mechanism...yes: "**Creativity**".

## Task 08

Get a list of the Local Users of the Machine (you can Write them as an *array*, or use Internet to build a `foreach` loop).

For each of them, test if the `Desktop` folder of each user exists (in a loop structure of course), it he folder exists, the script must show a Message.

## Task 09

Get a list of the Local Users of the Machine (you can Write them as an *array*, or use Internet to build a `foreach` loop).

For each of them, test if the user is enabled or disabled. Display a message that indicates the status.

## Task 10

Get a list of the Local Users of the Machine (you can Write them as an *array*, or use Internet to build a `foreach` loop).

For each enabled user, show the Last Logon on the System.


