set terminal pngcairo size 1920,1080 font 'Verdana,35' background rgb '#d1d1d1'
set datafile separator ';'
set title "Messung der Prozessorauslastung über 50 Iterationen"
set yrange [0:600]
set xlabel "Iterationen"
set ylabel "Prozent"
#set key left box
set output "lasttest.png"
plot "usage_result.csv" using 1:4 with lines lw 5 lc  rgb "#008080" notitle
