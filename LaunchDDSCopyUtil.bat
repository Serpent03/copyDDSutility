@echo off

echo [This script will put the kneeboard .dds files from theaters which don't have their own KoreaObj dependency(and instead use Korea or other theater dependencies) into^
 the main Korea/Other theater\Terrdata\Objects folder. This will allow you to port over the kneeboard files that WDP puts out without any hassle. Make sure that "<Theater>\Terrdata\Objects\KoreaOjb\" folder actually exists.] 

echo.
echo.

set /p thrName=[1] For Baltic. [2] For LoriKTO. [3] For LoriKTO+. [4] For LorikBalkans.: 

REM BMS Kneeboard files location
set baseLoc="Data\TerrData\Objects\KoreaObj\*.*"
set baseBalkansLoc="Data\Add-On Balkans\Terrdata\Objects\KoreaObj\*.*"

REM <Theater locations>

set balticLoc="Data\Add-On Baltic\Terrdata\objects\KoreaObj\*.*"
set loriKTOLoc="Data\Add-On LoriKTO\Terrdata\Objects\KoreaObj\*.*"
set loriKTOPlusLoc="Data\Add-On LoriKTO\Terrdata\Objects+\KoreaObj\*.*"
set lorikBalkansLoc="Data\Add-On LorikBalkans\Terrdata\Objects\KoreaObj\*.*"
set panamaLoc="Data\Add-On Panama\Terrdata\Objects\KoreaObj\*.*"
set ktoTvTLoc="Data\Add-On Korea TvT\TerrData\Objects\KoreaObj\*.*"

echo.
echo.
echo.

if %thrName%==1 ( 	REM Baltic
	echo Copying kneeboard files from %balticLoc% to %baseLoc%
	copy %balticLoc% %baseLoc%
)

if %thrName%==2 ( 	REM LoriKTO
	echo Copying kneeboard files from %loriKTOLoc% to %baseLoc%
	copy %loriKTOLoc% %baseLoc%
)

if %thrName%==3 ( 	REM LoriKTO+
	echo Copying kneeboard files from %loriKTOPlusLoc% to %baseLoc%
	copy %loriKTOPlusLoc% %baseLoc%
)

if %thrName%==4 ( 	REM Lorik Balkans
	echo Copying kneeboard files from %lorikBalkansLoc% to %baseLoc%
	copy %lorikBalkansLoc% %baseBalkansLoc%
)

if %thrName%==5 ( 	REM Panama
	echo Copying kneeboard files from %panamaLoc% to %baseLoc%
	copy %panamaLoc% %baseLoc%
)

if %thrName%==6 ( 	REM KTO TvT
	echo Copying kneeboard files from %ktoTvTLoc% to %baseLoc%
	copy %ktoTvTLoc% %baseLoc%
)

echo.
echo.
echo All files copied successfully to %baseLoc%..

echo.
set /p exitToDesk=Press enter to exit..  