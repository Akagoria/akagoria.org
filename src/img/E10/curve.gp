# gnuplot script
# $ gnuplot < curve.gp

set terminal pngcairo

set output "curve.png"
set title "Interpolation"
set ylabel "g(t)"
set xlabel "t"
set key left top

plot [0:1] x title "linear", \
  -2 * x ** 3 + 3 * x ** 2 title "cubic", \
  6 * x ** 5 - 15 * x ** 4 + 10 * x ** 3 title "quintic", \
  (1 - cos(pi * x)) * 0.5 title "cosine"
