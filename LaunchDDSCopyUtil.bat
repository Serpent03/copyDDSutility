@echo off

echo Script for moving around kneeboard files to the correct directory. Make sure the destination KoreaObj folder exists.

echo.
echo.
echo -----------------------------------------------------------------

set /p thrName=[1] For Baltic. [2] For LoriKTO. [3] For LoriKTO+. [4] For LorikBalkans. [5] For Israel 1980s. [6] KTO TvT. : 

echo -----------------------------------------------------------------

REM BMS Kneeboard files location
set baseLoc="Data\TerrData\Objects\KoreaObj\*.*"
set baseBalkansLoc="Data\Add-On Balkans\Terrdata\Objects\KoreaObj\*.*"

REM <Theater locations>
REM <Panama>
set panamaLoc="Data\Add-On Panama\Terrdata\Objects\KoreaObj\*.*"

REM <KTO>
set loriKTOPlusLoc="Data\Add-On LoriKTO\Terrdata\Objects+\KoreaObj\*.*"
set loriKTOLoc="Data\Add-On LoriKTO\Terrdata\Objects\KoreaObj\*.*"
set ktoTvTLoc="Data\Add-On Korea TvT\TerrData\Objects\KoreaObj\*.*"

REM <Balkans>
set balticLoc="Data\Add-On Baltic\Terrdata\objects\KoreaObj\*.*"
set lorikBalkansLoc="Data\Add-On LorikBalkans\Terrdata\Objects\KoreaObj\*.*"

REM <Israel>
set itoLoc="Data\Add-On Israel\Terrdata\objects\KoreaObj\*.*"
set itoEightyLoc="Data\Add-On Israel1980s\Terrdata\objects\KoreaObj\*.*"

echo.
echo.

if %thrName%==1 ( 	REM Baltic
	echo Copying kneeboard files from %balticLoc% to %baseLoc%
	copy %balticLoc% %baseLoc%
	echo All files copied successfully to %baseLoc%..
)

if %thrName%==2 ( 	REM LoriKTO
	echo Copying kneeboard files from %loriKTOLoc% to %baseLoc%
	copy %loriKTOLoc% %baseLoc%
	echo All files copied successfully to %baseLoc%..
)

if %thrName%==3 ( 	REM LoriKTO+
	echo Copying kneeboard files from %loriKTOPlusLoc% to %baseLoc%
	copy %loriKTOPlusLoc% %baseLoc%
	echo All files copied successfully to %baseLoc%..
)

if %thrName%==4 ( 	REM Lorik Balkans
	echo Copying kneeboard files from %lorikBalkansLoc% to %baseLoc%
	copy %lorikBalkansLoc% %baseBalkansLoc%
	echo All files copied successfully to %baseBalkansLoc%..
)

if %thrName%==5 ( 	REM ITO80
	echo Copying kneeboard files from %itoEightyLoc% to %itoLoc%
	copy %itoEightyLoc% %itoLoc%
	echo All files copied successfully to %itoLoc%..
)

if %thrName%==6 ( 	REM TvT
	echo Copying kneeboard files from %ktoTvTLoc% to %baseLoc%
	copy %ktoTvTLoc% %baseLoc%
	echo All files copied successfully to %baseLoc%..
)

echo.


echo.
set /p exitToDesk=Press enter to exit..  
