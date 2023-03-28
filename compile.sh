#!/bin/bash

set -e

OPT="-O2"
DBG="-ggdb3 -DDEBUG"
CFLAGS="-Wall"
OPTCFLAGS="${CFLAGS} ${OPT}"
DBGCFLAGS="${CFLAGS} ${DBG}"
rm -f *.exe *.dbg

gcc ${OPTCFLAGS} ether-wake.c -o ether-wake.exe
gcc ${DBGCFLAGS} ether-wake.c -o ether-wake.dbg

strip *.exe
