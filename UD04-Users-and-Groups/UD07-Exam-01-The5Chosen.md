---
title: "[ Units 01-04 ] : The 5 Ronin Scripts - Director's Cut"
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

# Introduction

Each question of the exam has the same value: 1 point.

Read all of them carefully, and then make the exam. For each question, you have the original script (from the 47 ronin scripts), and the question for the exam (The evolved version).

Good luck.

# Task 01 : The Evolution of 20

## The original : Script 20

Code a Shell Script that displays all **prime factors** of a number given as first parameter (argument).

Disclaimer: *prime factors* = Factores Primos (sí, han vuelto en forma de Chapa).

## The 20 evolved: 

Test that the argument given to the script is **only one**, a it is a *number* between 2 and 1000, if not, the script must show an  error message.

# Task 02 : The Evolution of 30

## The original : Script 30 

Code a Shell Script that test if the argument given is a valid *Car Plate* in the form 0000-XYZ and returns the next Car Plate Code (number and letters).

## The 30 evolved:

Extend the validation with the next checks:

- The number must be between 0000 and 9999.
- The letters must be only from AAA to DZZ, if the Car Plate has other must show an error.

\newpage

# Task 03 and 04 : The Evolutions of 42

## The original: Script 42

In Japan, the country is splitted in 47 prefectures (provinces), for us (*European People*), all of them are similar, but for the japaneses is said that exists 4 kind of prefectures:

- 1 To (*Tokio*)
- 1 Do (*Hokkaido*)
- 2 Fu (*Osaka and Kioto*)
- 43 Ken (from the **Rural contries**)

![Japan Prefectures](imgs/japan.jpg)\

Make a Shell Script that ask the user for a Valid ZIP Number (Postal code of Japan), in the format NNN-NNNN, after validate that the format is correct, the Script must say if the Prefecture is *To*, *Do*, *Fu* or *Ken*. If the Prefecture is one of the 43 ken is not necessary to indicate the name of the Prefecture, if the Prefecture is *To*, *Do* or *Fu*, the name of the Prefecture must be listed.

The script must check the Postal Code from the Real Postal Codes of Japan.

The list of Postal Codes and their number can be found here:

- https://en.wikipedia.org/wiki/Postal_codes_in_Japan

*Warning!*: Some Japan Prefectures have more than one number to identify them. For example Tokyo has from 10 to 20.

Some examples:
```shell
 * Welcome to the PostMan Japanese CLI
 * What is your ZIP Code : 45-3334
 [ ERROR ] : Format not valid, use NNN-NNNN
```

```shell
 * Welcome to the PostMan Japanese CLI
 * What is your ZIP Code : 102-3334
 [ TO ] : Postal code from : TOKIO
```

```shell
 * Welcome to the PostMan Japanese CLI
 * What is your ZIP Code : 771-0123
 [ KEN ]: Postal code from Rural Japan
```

## The 42 Evolved: 

- Change the validation in order to accept not only NNN-NNNN number, but also NN-NNNN or N-NNNN if the first number has only 2 or 1 digit.


## The 42 Re-Evolved:

- If the argument given is --file PATH_TO_FILE, the script must read the different ZIP Codes from the file, instead from the Standard input:

EXAMPLE of FILE (`ZipCodes.txt`):


```shell
771-0123
102-3334
102-2334
131-4187
```

The execution of the script must returns:

```shell
usuario@maquina:~$./42-re-evolved.sh --file 
777-0123 -> [ KEN ]: Postal code from Rural Japan
102-3334 -> [ TO ] : Postal code from : TOKIO
102-2334 -> [ TO ] : Postal code from : TOKIO
131-4187 -> [ TO ] : Postal code from : TOKIO
```

\newpage

# Task 05 : The Evolutions of 43

## The original: Script 43

Code a Shell Script that test if all the Ethernet Cards in the machine has Link. Displaying a summary of the status of all of them.

Example of execution:
```shell
enp0s8 -> Link UP.
enp3s5 -> Link DOWNN
```

## The 43 Evolved:

Add to the output the IP assigned to each Ethernet Card.

Example of execution:
```shell
enp0s8 -> 192.168.1.3 Link UP.
enp3s5 -> 172.29.0.34 Link DOWN
```
