#!/bin/bash

curl -s `cat url.txt` -A `cat ua.txt` > 1.html

xmllint --html --xpath (//p[@class='Onlib_Text']) 1.html 2>/dev/null >2.html
