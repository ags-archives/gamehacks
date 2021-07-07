ASCC=$HOME/ascc/ascc

$ASCC -A 350 -g -fpointerhack=1 -foldstrings=1 -S agswave.c || exit 1
python2 only-code.py text agswave.s > agswave.text.inc
python2 only-code.py data agswave.s > agswave.data.inc
agssemble -E O/gamescript0.s
make
