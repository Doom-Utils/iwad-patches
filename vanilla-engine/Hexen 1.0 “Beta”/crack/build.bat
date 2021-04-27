@echo off

del hexbcrak.com > nul
del hexbcrak.obj > nul

wcl -3 -bcl=com -bt=com -s -d0 -os -mt -zc -zp1 hexbcrak.c

if not exist hexbcrak.com goto end
upx --best hexbcrak.com

:end
