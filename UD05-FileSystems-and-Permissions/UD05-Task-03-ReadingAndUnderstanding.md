---
title: "[ Unit 05 ] : Guess The Script - 01"
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

Which is the behaviour of this script:

```shell
#!/bin/bash

cat /etc/passwd | while read line;do
	hello=$(echo "$line" | cut -d ":" -f1)
	aA="^hello"
	cat /etc/group | grep $hello | while read line2; do
	[[$line =~ $aA]] && echo $line2 |cut -d ":" -f4 |grep $hello > /tmp/transh.txt && echo  "$hello hola"
        done
done
exit 0
```

Explain it line by line. 

Correct the script in order to not cause **braindamage**.