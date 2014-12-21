reset
set term postscript portrait enhanced color "Times-Roman" 10
set size 1,1
set output "tcp_udp_benchmark.ps"


set title "Benchmark of Communication over Localhost\nFor Both Python and Repy"

set xtics rotate by -45
set xtics font ",10"


set key top left width 1
set xlabel "API type"
set ylabel "Throughput (KBytes/s)"

set boxwidth 2
set style fill solid

plot 'tcp_udp_recv_send_bench_average.out' using 2:xtic(1) with boxes notitle,\
     'tcp_udp_recv_send_bench_average.out' using 0:($2+1000):($2) with labels notitle
     