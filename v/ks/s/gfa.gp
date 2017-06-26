sz = 0.65; lw = 3
set terminal pdf monochrome size 5*sz, 3*sz linewidth lw

o="gfa.pdf"; print("s/s.gp: writing: " . o); set output o

set xlabel "shear rate"
set ylabel "TTF / (size in X)"

set xtics 4
set ytics 1
set key off

plot "gfa.dat" u 1:(abs($2)/$4) w lp
