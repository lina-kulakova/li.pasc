#!/bin/bash
gl="1.0 7.0 11.0"
for g in $gl
do sh v.sh $g; m/m.py s/simple.session el.$g.png
done

t=/tmp/boot.$$
trap 'rm -f $t' 1 2 3 15
s=779x317+200+483 # found with display [png]

for g in $gl
do convert -crop $s el.$g.png $t && mv $t el.$g.png
done
