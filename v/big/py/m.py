#!/usr/bin/env visit.cli

from visit import *
from sys   import argv
from os    import system

def session(s): RestoreSession(s, 0)
def sfile(n):
    s = SaveWindowAttributes()
    s.fileName = n
    s.format = s.PNG
    s.progressive = 0
    s.family      = 0
    SetSaveWindowAttributes(s)
    SaveWindow()

def msg(s): sys.stderr.write(s + "\n")
def err(s): msg("m.py: " + s); exit()
def nxt():
    if len(argv) > 0: return argv.pop(0)
    else:             err("not enought args")

argv.pop(0) # remove py file
s = nxt() # seesion
f = nxt() # img file name
session(s)
sfile(f)
exit()
