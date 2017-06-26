#!/bin/bash

avel() { # average ellipsoid
    bop.avel.acc -a $g.vtk ~/s/sh_$g/ply/rbcs-01*.ply
}

png() {
    sh v.sh $g
    py/m.py s/s.session $g.png
}

s=511x921+256+0
t=/tmp/boot.$$
trap 'rm -f $t' 1 2 3 15
crop() (
    f=$g.png
    convert -crop $s $f $t && mv $t $f
)

l="1.0 2.0 3.0 6.0 10.0 12.0"
#for g in $l; do avel; done
#for g in $l; do png; done
for g in $l; do crop; done
