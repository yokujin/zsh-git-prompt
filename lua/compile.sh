
for f in *.lua; do
    luajit -b $f `basename $f .lua`.o
done

ar rcs libluagit.a *.o

gcc -O2 -Wall -Wl,-E -o app app.c libluagit.a -I/usr/include/luajit-2.0 -Lxx -lluajit-5.1 -lm -ldl

# -Wl,--whole-archive -lmyluafiles -Wl,--no-whole-archive -Wl,-E.