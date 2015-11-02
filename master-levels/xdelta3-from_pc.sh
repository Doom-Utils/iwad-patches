#!/bin/sh -

./generate-tar.sh || exit 1

xdelta3 -d -s masterlevels.tar tar-to-console_bfg.vcdiff masterlevels.wad
rm -f masterlevels.tar
