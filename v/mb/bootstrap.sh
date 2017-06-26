#!/bin/bash

t=/tmp/boot.$$
trap 'rm -f $t' 1 2 3 15
s=304x900+346+24

#l="1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0"
#for g in $l; do sh v.sh $g; py/m.py s/s.session  $g.png; done

for f in *.png
do convert -crop $s $f $t && mv $t $f
done
