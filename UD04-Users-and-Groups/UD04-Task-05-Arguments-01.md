---
title: "[ Unit 04 ] : Arguments"
author: [Angel Berlanas Vicente]
date: "2021-02-16"
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
...

# Task 01

Make an script that reads from the file `cargo.txt` the next values and
check if the total amount of Kilograms can be pulled for a locomotive.

The power of the locomotive will be passed to the script as the first ARGUMENT in kilonewtons.

In order to simplify the mathematical operations, you can assume that a kilonewton can afford 1 unit from the cargo registers.

Example:

 *A weight of 150 in `cargo.txt` line needs 150 kn (**kilonewntos**)*

The output of the script will be a simple message that shows if the locomotive can pull with the power :

* ENOUGH TRACTIVE EFFORT
* NOT ENOUGH TRACTIVE EFFORT

![Imgs](imgs/locomotive-diesel.jpg)\

\newpage
## Resources

Contents of `cargo.txt`:

```shell
1000
2350
4000
1200
6733
10020
```

### Examples of execution:

```shell
./locomotive.sh 5000
NOT ENOUGH TRACTIVE EFFORT

./locomotive.sh 30000
ENOUGH TRACTIVE EFFORT
```

