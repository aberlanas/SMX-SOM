---
title: "[ Unit 04 ] : Local Users and Groups on GNU/LinuX"
author: [Angel Berlanas Vicente]
subject: "Markdown"
keywords: [Markdown, Users, Groups]
lang: "en"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Scripts about Users and Groups

Collection of exercises about Users and Groups in GNU/LinuX

# Script 01

Make a Shell Script that shows all the "logable" users on the System (only the login)

# Script 02

Make a Shell Script that shows all the users on the System which ID is between 114 and 512. The info displayed must be :

- `login`
- `id`
- `Shell of the User`

# Script 03

Make a Shell Script that shows all the users on the System which their login not contains the letter "w".
The info displayed must be:

- `login`
- `id`

#  Script 04

Make a Shell Script that shows all the users on the System that belongs (at least) to 2 differents groups.

The info displayed must be:

- `login`
- `groups`

# Script 05

Make a Shell Script that show all the users on the System that belongs only at their own groups.

The info displayed must be:

- `login`
- `group`

# Script 06

Make a Shell Script that :

- Accepts only two arguments, if they are not given, display an error message.
- The first argument must be a valid "logable user" (uid > 1000), if not : display an error message.
- The second argument must be a non existent group , if not : display an error message.

Create the group given as second argument and add the user to that group.

\newpage
# Script 07

We are selected as the IT Guys at *MiddleEarth&CO*. Our boss, the famous Elf *Elrond* needs the Infraestructure to manage the Council. As a first step to solve *The Council* we need to create the Nine users of the Fellowship in our GNU/LinuX environment.

![OneRing](imgs/oneRing.png)\

Create a Shell Script named `ElrondCouncilUsers.sh`, in which Script we must *create* the nine users (using the password : "*1Ring2RuleThemAll*" for all of them) of the Fellowship of the Ring.

Requisites:

- For each user, the Script must create the user only if not exists. Saying a message if already exists on the system.
- The login of the user must be in *lowercase*, but the FullName in Normal form: **Aragorn,Legolas,...**
- The script must not ask for a Password or anything (fully unattended script).

Example of execution

```shell
elrond@rivendel:~$sudo ./ElrondCouncilUsers.sh
* Aragorn user exists.
* Legolas users not exists.. creating it...
-- Legolas added!
* CONTINUE...
```


