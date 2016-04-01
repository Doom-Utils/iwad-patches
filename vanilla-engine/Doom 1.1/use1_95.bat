@echo Converting DOOM.EXE back to DOS-Extender v1.95
@echo off
if exist doom1_95.exe goto ok
@echo DOOM is already at 1.95!
goto end
:ok
del doom.exe
ren doom1_95.exe doom.exe
:end
