#!/bin/bash
set -e
FG=~/FlameGraph
E=power/energy-cores/,power/energy-gpu/,power/energy-pkg/,power/energy-psys/
mkdir -p results

g++ -O0               -g -fno-omit-frame-pointer lab.cpp -o lab_o0
g++ -O3 -march=native -g -fno-omit-frame-pointer lab.cpp -o lab_o3

sudo perf stat -a -r 3 -e $E sleep 30 2> results/energy_idle.txt

for v in o0 o3; do
  echo "=== $v"
  /usr/bin/time --verbose ./lab_$v 2> results/time_$v.txt
  perf stat -d ./lab_$v 2> results/stat_$v.txt
  perf record -F 999 -g -o results/perf_$v.data ./lab_$v
  perf report -i results/perf_$v.data --stdio --no-children > results/report_$v.txt
  perf script -i results/perf_$v.data | $FG/stackcollapse-perf.pl \
    | $FG/flamegraph.pl --title "lab $v" > results/flamegraph_$v.svg
  sudo perf stat -a -r 3 -e $E ./lab_$v 2> results/energy_$v.txt
  for f in scale_add dot; do
    objdump -d -M intel --no-show-raw-insn -C lab_$v | awk "/^[0-9a-f]+ <$f\\(/,/^\$/" > results/asm_${f}_$v.txt
  done
done
echo "ГОТОВО"
