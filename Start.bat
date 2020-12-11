@echo off
:domi
mode 60,20
title DOMI'S GAME SPOT
color 0a
cls
echo.
echo    /--------------------------------------------------\
echo   \          Welcome to Domi's Game Spot!              /
echo    /        Feel free to visit my GitHub              \
echo   \                github.com/domilx                   /
echo    /          Choose from one of these games!         \
echo   \                                                    /
echo    / 1- Pokemon                                       \
echo   \  2- RavenField                                      /
echo    / 3- Among Us                                      \
echo   \  4- Geometry Dash                                  /
echo    / 5- FNAF1                                         \
echo   \  6- FNAF2                                          /
echo    / 7- FNAF3                                         \
echo   \  8- FNAF4                                          /
echo    / 9- Clustertruck                                  \
echo   \ 10- Text Adventures                               /
echo    / A- Rules and Credits                             \
echo    \--------------------------------------------------\
set /p gaem=Choose-
if %gaem%==1 goto pokemon
if %gaem%==2 goto raven
if %gaem%==3 goto among
if %gaem%==4 goto geometry
if %gaem%==5 goto fnaf1
if %gaem%==6 goto fnaf2
if %gaem%==7 goto fnaf3
if %gaem%==8 goto fnaf4
if %gaem%==9 goto truck
if %gaem%==a goto credits
if %gaem%==A goto credits
if %gaem%==' ' goto domi
if %gaem%==10 goto textadv

:pokemon
pokemon.bat

:raven
@echo on
cd C:\Users\%USERNAME%\AppData\Local\Programs\domi\RavenField\
ravenfield.exe
@echo off
exit

:among
@echo on
cd C:\Users\%USERNAME%\AppData\Local\Programs\domi\amongus\
hehe.bat
@echo off
exit

:geometry
@echo on
cd C:\Users\%username%\AppData\Local\Programs\domi\geometry\
Geometrydash.exe
@echo off
exit

:fnaf1
START C:\Users\%username%\AppData\Local\Programs\domi\fnaf\fnaf1.exe
exit

:fnaf2
START C:\Users\%username%\AppData\Local\Programs\domi\fnaf\fnaf2.exe
exit

:fnaf3
START C:\Users\%username%\AppData\Local\Programs\domi\fnaf\fnaf3.exe
exit

:fnaf4
START C:\Users\%username%\AppData\Local\Programs\domi\fnaf\fnaf4.exe
exit

:truck
@echo on
cd C:\Users\%username%\AppData\Local\Programs\domi\Clustertruck\
Clustertruck.exe
@echo off
exit

:credits
cls
mode 40,15
echo   Founders : Domi and Alec
echo   Please visit my github
echo     github.com/domilx
echo We do not take part in the
echo distributing of this program.
echo This program is not meant to be 
echo used on hardware that was not 
echo       intended for it
echo If it is we take no part in that 
echo action. As we clearly stated it 
echo        must not be.
echo     But most importantly
echo           ENJOY!
pause
goto domi

:textadv
start Text_Update.bat
exit