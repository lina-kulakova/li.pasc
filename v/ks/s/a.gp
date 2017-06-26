sz = 0.65; lw = 3
set terminal pdf monochrome size 5*sz, 3*sz linewidth lw

o="a.pdf"; print("s/s.gp: writing: " . o); set output o

set xlabel "shear rate"

set xtics 4
set ytics 2
set key center

plot [:13]\
     "gfa.dat" u 1:3 w p pt 6 t "a_x", \
     ""        u 1:5 w p pt 7 t "a_z"