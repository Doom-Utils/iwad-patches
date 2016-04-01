@echo Converting DOOM.EXE to use DOS-Extender v1.94
@echo off
if exist doom1_95.exe goto noway
ren doom.exe doom1_95.exe
copy u1_94.exe doom.exe
goto end
:noway
@echo You've already updated DOOM to 1.94!
:end
