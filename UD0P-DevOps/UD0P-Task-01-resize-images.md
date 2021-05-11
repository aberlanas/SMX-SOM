---
title: "[ Unit 0P ] : Resizing Images"
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

Make a Python Script that accepts as an argument a *valid* folder. And then, create at the same level a folder named : FOLDERNAME-resized and store at this folder all the images (*.png and *.jpg) that are present in the first level of the orig folder, resizing each one at 50% (width and height).

Example

```shell
./python-01-resizing.py /home/smx/Imagenes/Chachis

* Working with:
/home/smx/Imagenes/Chachis-resized

* Processing : 1.png
* Processing : 2.png
* Processing : 3.png
* Processing : 4.png
* Processing : relativo.jpg
* Processing : yago.png
* Processing : ejemplo.jpg

```


You can use for images whatever you want (with criteria):

Some useful image sources:

* Unsplash

# Hints

Install package: 

```shell
sudo apt install python3-pythonmagick 
```

Import it

```python
import PythonMagick

doStuff():
    # Doing here
```