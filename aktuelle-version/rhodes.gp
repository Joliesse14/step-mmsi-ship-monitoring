set terminal pngcairo size 1000,400 font 'sans,11'
set out "./rhodes.png"
set title "Rhodes Signalstreuung der letzten 7 Tage"
set datafile separator ";"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set xrange [system("date -d '6 days ago' +'%F 00:00:00'"):system("date +'%F 24:00:00'")]
set yrange [0:100]
set format x "%Y-%m-%d %H:%M"
set xlabel "Zeit"
set tics textcolor "black"
set xtics rotate by 30 right
#set xtics (system("date -d '5 days ago' +%Y-%m-%d"),system("date -d '4 days ago' +%Y-%m-%d"),system("date -d '3 days ago' +%Y-%m-%d"),system("date -d '2 days ago' +%Y-%m-%d"),system("date -d '1 day ago' +%Y-%m-%d")
set key top left
plot "watcher.dat" using 1:3 with points lc rgb 'blue'
