#!/bin/sh -

xdelta3 -d -s masterlevels.wad console_bfg-to-tar.vcdiff masterlevels.tar
tar -xf masterlevels.tar
rm -f masterlevels.tar
