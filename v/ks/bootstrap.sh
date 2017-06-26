#!/bin/bash

avel() { # average ellipsoid
    bop.avel.ks $g.vtk ~/s/sh_$g/ply/rbcs-01*.ply
}

l="1.0 2.0 3.0 6.0 10.0 12.0"
for g in $l; do o=`avel`; echo $g $o; done | tee gfa.dat  # gdot freq a(X) a(Y)
