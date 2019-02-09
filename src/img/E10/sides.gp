# gnuplot script
# $ gnuplot < sides.gp

set terminal pngcairo

set output "sides.png"
set title "Bords"
set ylabel "f(d)"
set xlabel "d"
set key right bottom

plot [0:1] x, sqrt(x), sin(x * pi / 2), sin(sqrt(x) * pi / 2)

