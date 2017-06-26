sz = 0.65; lw = 3
set terminal pdf monochrome size 5*sz, 3*sz linewidth lw

o="a.pdf"; print("s/s.gp: writing: " . o); set output o

set xlabel "shear rate"

set xtics 4
set ytics 1
set key off

plot "gfa.dat" u 1:3 w lp, "" u 1:4 w lp