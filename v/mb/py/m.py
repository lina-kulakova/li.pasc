#!/usr/bin/env visit.cli

from visit import *
from sys   import argv

def session(s): RestoreSession(s, 0)
def sfile(n):
    s = SaveWindowAttributes()
    s.fileName = n
    s.format = s.PNG
    s.progressive = 0
    s.family      = 0
    SetSaveWindowAttributes(s)

def save(d, f):
    f = "%s/%04d" % (d, f)
    sfile(f)
    SaveWindow()

def move(d, lo, hi):
    i = 0
    for s in range(lo, hi + 1):
        SetTimeSliderState(s)
        save(d, i); i += 1

def msg(s): sys.stderr.write(s + "\n")
def err(s): msg("m.py: " + s); exit()
def nxt():
    if len(argv) > 0: return argv.pop(0)
    else:             err("not enought args")

argv.pop(0) # remove py file
s = nxt() # seesion
d = nxt() # img dir
session(s)
lo, hi = 500, 700
move(d, lo, hi)
exit
