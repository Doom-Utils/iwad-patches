@goto checkdrive

:error
@echo DWANGO Install Usage:
@echo dwango DRIVELETTER
@echo Example: dwango c
@goto end

:install
@cls
@echo.
@echo          ÄÄÄÄ    Ä     Ä     Ä      ÄÄ   Ä    ÄÄÄÄÄ     ÄÄÄÄÄ
@echo          Ä   Ä    Ä Ä Ä    Ä   Ä    Ä Ä  Ä    Ä        Ä     Ä
@echo          Ä   Ä    ÄÄÄÄÄ    ÄÄÄÄÄ    Ä  Ä Ä    Ä  ÄÄ    Ä     Ä
@echo          ÄÄÄÄ      Ä Ä     Ä   Ä    Ä   ÄÄ    ÄÄÄÄÄ     ÄÄÄÄÄ
@echo.
@echo                                v2.02
@echo.
@if not exist %1:\dwango\nul md %1:\dwango
@d202.exe %1:\dwango
@del d202.exe
@del read.me
@echo DWANGO has now been installed.
@pause
@%1:
@cd \dwango
@dwango
@goto end

:checkdrive
@if "%1"=="" goto error
@if %1==C goto install
@if %1==D goto install   
@if %1==E goto install   
@if %1==F goto install 
@if %1==G goto install   
@if %1==H goto install
@if %1==I goto install   
@if %1==J goto install   
@if %1==K goto install   
@if %1==L goto install   
@if %1==M goto install   
@if %1==N goto install
@if %1==O goto install
@if %1==P goto install
@if %1==Q goto install
@if %1==R goto install
@if %1==S goto install
@if %1==T goto install
@if %1==U goto install
@if %1==V goto install
@if %1==W goto install
@if %1==X goto install
@if %1==Y goto install   
@if %1==Z goto install   
@if %1==a goto install 
@if %1==b goto install   
@if %1==c goto install
@if %1==d goto install   
@if %1==e goto install   
@if %1==f goto install   
@if %1==g goto install   
@if %1==h goto install   
@if %1==i goto install
@if %1==j goto install
@if %1==k goto install
@if %1==l goto install
@if %1==m goto install
@if %1==n goto install
@if %1==o goto install
@if %1==p goto install
@if %1==q goto install
@if %1==r goto install
@if %1==s goto install
@if %1==t goto install
@if %1==u goto install
@if %1==v goto install
@if %1==w goto install
@if %1==x goto install
@if %1==y goto install
@if %1==z goto install
@goto error

:end
