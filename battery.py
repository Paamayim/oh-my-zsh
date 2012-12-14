#!/usr/bin/env python2
# coding=UTF-8

import sys
import time
import math
import string
import subprocess

p = subprocess.Popen(["acpi"], stdout=subprocess.PIPE)
output = string.split(p.communicate()[0])

percent = int(output[3][:-2]) if output[2] != "Full," else 100
width = 10
 
if output[2] == "Discharging,":
    full = u'◂'
    empty = u'◃'
else:
    full = u'▸'
    empty = u'▹'

marks = math.floor(width * (percent / 100.0) + 0.5)
spaces = math.floor(width - marks)
loader = (full * int(marks)) + (empty * int(spaces))

color_green = '%{[32m%}'
color_yellow = '%{[1;33m%}'
color_red = '%{[31m%}'
color_reset = '%{[00m%}'

color_out = (
    color_green if percent > 60
    else color_yellow if percent > 25
    else color_red
)

sys.stdout.write(color_out)
sys.stdout.write(loader.encode('utf-8'))
sys.stdout.write(color_reset)
