@echo off
echo Installing DWANGO to C:\DWANGO
rem ren d202.exe dwango.exe
md c:\dwango
copy dmod.exe c:\dwango
del dmod.exe
copy d202.exe c:\dwango
del d202.exe
copy dwango.* c:\dwango
del dwango.str
del dwango.exe
del dwango.doc
c:
cd \dwango
d202
del dwango.bat
