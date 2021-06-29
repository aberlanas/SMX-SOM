---
title: "[ Recover Exam ] Extraordinary Examination "
author: [Angel Berlanas Vicente]
date: "2021-03-25"
subject: "Markdown"
subtitle: "All Evaluations."
lang: "es"
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage: true,
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---


# Instructions.

- Read the exam carefully before start.
- Answer only the evaluations that you have suspended.
- The mark will be calculated using the average of the individual marks.

    - 1 Evaluation: (*Score of the Task* / 1)
    - 2 Evaluations: (*Score of the Task* +  *Score of the Task*) / 2
    - 3 Evaluations: (*Score of the Task* +  *Score of the Task* + *Score of the Task*)/ 3

- In order to get the average, the minimal mark in each evaluation task is 3. With a lower mark, the exam will be failed.
- You can use Internet and `manpages`, but you cannot receive external assistance.
- Good Luck!

---

\newpage

# 1 EVA Task

**Creating files**

We have a problem with a Database Filesystem, and our boss needs a script in order to stress the system, to make the Filesystem to failing. 

The Database Filesystem uses three folders:

- `/database/init`
- `/database/working-area`
- `/database/stop`

We must create a lot files with a custom *extension* in the folders, in that way, the Database will process them and we can trace how the Database Filesystem will fail.

---

Code a shell script that accepts only 4 arguments, as follows:

- 1 Argument: The extension of the files (**without the dot**).
- 2 Argument: The number of files that will be created.
- 3 Argument: The last level folder of the Database Filesystem (`init`,`working-area` or `stop`).
- 4 Argument: Verbose Level (0 or 1).

Requeriments:

- The number of the arguments must be checked, if the number is not four, must shows a message with an example of correct usage.
- The *first* argument must not starts with a dot character (`.`).
- The *second* argument must be a integer between 1 and 100.
- The *third* argument must be a string and be `init`,`working-area` or `stop`.
- The *verbose* level must be or 0 or 1.

If any of these requeriments is not accomplished, the script must fail and will display the correct usage.

## The Behaviour

When all the arguments has been tested, then the script must create the number of files given in the folder chosen. The name of each one must be spawn-XXX.EXTENSION and if the *Verbose Level* is set to 1, the script must displays a message for each file created, for example:

```shell
user@machine:~$./task-01.sh dat 3 working-area 1
* All the Arguments are OK.
* Creating /database/working-area/spawn-1.dat
* Creating /database/working-area/spawn-2.dat
* Creating /database/working-area/spawn-3.dat
```

## Technical Help

The basic grep syntax when searching multiple patterns in a file includes using the grep command followed by strings and the name of the file or its path.

The patterns need to be enclosed using single quotes and separated by the pipe symbol. Use the backslash before pipe `|` for regular expressions.

```shell
cat /some/file | grep -E 'pattern1|pattern2' 
```

---

## Rubric 

| Item | Weight |
|------|--------|
| Test the arguments correctly| 0-4|
| Creating the files | 0-3|
| Verbose/Logging | 0-1|
| Structure and Comments | 0-2|

---

\newpage
# 2 EVA Task

## Network Script

Code a Shell Script that shows how many Ethernet Cards (loopback included) has the system, and the name of each device.

Next, the script must ask the user about the device that must be analized. The user must enter the device name. If the user not enter a valid ethernet name (or incomplete), the script must show an error message and exit with error status.

The info displayed about the selected devices will be:

* IP.
* Mask in CIDR format (/24, /8/,...).
* How many hosts could exist (as maximum) in the network of the device (taking this device into account). This number must be calculated.

Example of execution

```shell
user@machine:~$./task-02.sh
* The network devices are:
1: lo:
2: enp5s0:
3: enx000ec6d3e152:

 * What is the device to be analyzed : enp5s0
 * IP : 192.168.1.51
 * Mask : /24
 * The network allows 253 hosts more.
```

---

## Rubric 

| Item | Weight |
|------|--------|
| Test the arguments values correctly| 0-2|
| Display the information | 0-6|
| Structure and Comments | 0-2|

\newpage

# 3 EVA Task

## A Victory Lost.

In december 1942 the Soviet forces aims to trap and eliminate the Axis forces that are in full retreat from the Caucasus, while the Axis forces must successfully withdraw and attempt to restore the front line by launching a desperate counterattack. The slightest mistake might turn victory into a rout.

![A Victory Lost](imgs/aVictoryLost.png)\

In this script we must simulate the concept of "*supply*" in a very abstract way, using **ownership** and *Links*.

### Step 1 : The Actors

First of all, the script must create the users:

- `axies`
- `soviets`

With the password equal to the username.

If the user is already in the system, the script must do nothing, not try to create them.

---

\newpage
### Step 2 : The Teather

Secondly, the script must create the next directory hierarchy:

```shell
/urss/karkhov
/urss/rostov
/urss/stalino
/urss/dnepropetrovsk
/urss/zaporzhe
/soviet-supply
/axies-supply
```

At the begining all of these folder belongs to the `axies` user, except `/soviet-supply`, that belongs to `soviets`. 

These operations must be made inside the script. 

---

### Step 3 : The Action

Create another separate script, when it runs, it must show all of the folders in the `/urss/` folder and the owner of each folder. 

And then, read for the standard input the first letter of the city name (`k,r,s,d,z`), and change the owner to the *opposite*. When the user introduces the character : `q` the script must exit, in other case, return to the list of folders and owners, and ask for a new operation.

Remove all simbolics links inside the folder chosen and create to the `/soviet-supply` or `/axies-supply` (the actual owner) a link inside the chosen folder name `Supplied.lnk`. Using the `ls` command display the content of the folder in order to show the supply link to the actual owner.

\newpage

```shell
user@machine:~$./task-03-action.sh
* Current situation:

karkhov -> axies
rostov -> axies
stalino -> axies
dnepropetrovsk -> axies
zaporzhe -> axies

What city has change the ownership? : r

- rostov belongs now to : soviets
- creating supply:
lrwxrwxrwx 1 root root 15 jun 29 17:57 Supplied.lnk -> /soviet-supply/

* Current situation:
karkhov -> axies
rostov -> soviets
stalino -> axies
dnepropetrovsk -> axies
zaporzhe -> axies

What city has change the ownership? : q

```

---

## Rubric 

| Item | Weight |
|------|--------|
| Create the users| 0-1|
| Create the structure | 0-1|
| Make the operations | 0-6 |
| Structure and Comments | 0-2|
