sz = 0.65; lw = 3
set terminal pdf monochrome size 5*sz, 3*sz linewidth lw

o="gf.pdf"; print("s/s.gp: writing: " . o); set output o

set xlabel "shear rate"
set ylabel "TTF"

set xtics 4
set ytics 1
set key off

set macros
f(x) = a*x + b
d = 'u 1:(abs($2))'

fit f(x) "gfa.dat" @d via a, b
plot [:13] "gfa.dat" @d w p pt 6, f(x) w l lt 1
