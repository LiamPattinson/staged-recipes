export LIBXUL_DIST=$out
export M4=m4
export AWK=awk
export PERL=$(which perl)
# We can't build in js/src/, so create a build dir
mkdir obj
cd obj/
$PYTHON ../configure.py --enable-project=js --disable-ctypes --disable-jit --disable-jemalloc --enable-optimize --enable-hardening --with-intl-api --build-backends=RecursiveMake --with-system-icu --disable-debug --enable-gczeal
make
