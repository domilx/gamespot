@echo off
mode 90,30
:menu
cls
Title Text Adventures (BETA)
color 0a
echo -------Text Adventures-------
echo.
echo Please choose one of the following.
echo -----------------------------
echo Type [p] to play
echo -----------------------------
echo Type [s] to go to the settings
echo -----------------------------
echo Type [e] to exit
echo -----------------------------
echo Type [a] to access your profile
echo -----------------------------



set /p menusetting="Choice: "
if "%menusetting%" == "p" goto :play
if "%menusetting%" == "e" goto :exit
if "%menusetting%" == "s" goto :settings
if "%menusetting%" == "a" goto :ach
if "%menusetting%" == "sans" goto :secret



:play
cls
echo Gamemodes:
echo.
echo Type [z] for the --Zombie Mode--
echo.
echo Type [swat] for the --SWAT Gamemode--
echo.
set /p playchoiceswat="Choice: "
if "%playchoiceswat%" == "z" goto :zombmode
if "%playchoiceswat%" == "swat" goto :swat


:swat
cls
echo --------------------------------------------------------------------------
echo Rescue Mission 1
echo The House:
echo A murderer lives in that house. You must catch him ALIVE.
echo.
echo Do you choose this mission?
echo (Type Yes or No)
set /p missionchoice="Choice: "
if "%missionchoice%" == "Yes" goto :mission1
if "%missionchoice%" == "No" goto :menu
exit

:mission1
Title Mission 1
color 0c
cls
echo You arrive to the house and see a man move from window to window.
echo.
pause
cls
color 0b
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Breach inside the house from the front door (With your team).
echo 2. Let your team breach and throw a flashbang then enter.
echo 3. Let your team breach and throw a grenade then enter.
echo.
set /p choice1="Choice: "
if "%choice1%" == "1" goto :breachonly1
if "%choice1%" == "2" goto :flashbang1
if "%choice1%" == "3" goto :grenade1
:breachonly1
echo One of your agents gets shot in the process, but the place is clear now.
pause
goto :after1
:flashbang1
echo You have cleared that place and no one died!
pause
goto :after1
:grenade1
color 0c
echo Everyone died including you because of the grenade!
pause
goto :lose



:after1
cls
color 0c
echo ------------------------------------------------------------------
echo There are stairs and another room which you can clear.
echo.
echo What do you do?
echo.
echo 1. Check the stairs.
echo 2. Check the room.
set /p choice2="Choice: "
if "%choice2%" == "1" goto :stairs1
if "%choice2%" == "2" goto :door2

:stairs1
cls
color 0b
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Walk up (With your team).
echo 2. Let your team throw a flashbang then walk up.
echo 3. Let your team throw a grenade then walk up.
echo.
set /p choice3="Choice: "
if "%choice3%" == "1" goto :breachonly3
if "%choice3%" == "2" goto :flashbang3
if "%choice3%" == "3" goto :grenade3


:door2
cls
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Breach into the room. (With your team).
echo 2. Let your team throw a flashbang then get in.
echo 3. Let your team throw a grenade then get in.
echo.
set /p choice2="Choice: "
if "%choice2%" == "1" goto :breachonly2
if "%choice2%" == "2" goto :flashbang2
if "%choice2%" == "3" goto :grenade2

:breachonly2
echo You have cleared that place and no one died!
pause
goto :after2
:flashbang2
echo You have cleared that place and no one died!
pause
goto :after2
:grenade2
echo You killed a hostage then entered.
pause
goto :lose


:breachonly3
echo You have cleared that place and no one died!
pause
goto :after2
:flashbang3
echo You blinded your entire team and all got shot and died!
pause
goto :lose

:grenade3
echo You all died.
pause
goto :lose

:after2
cls
color 0c
echo Uh Oh! Someone sneaked up on you from the place you didn't check!
echo They killed one of your agents!
pause
cls
echo There are 2 rooms left, if you can investigate the rooms, save a hostage, then arrest the murderer, you win the mission.
pause
:door4
cls
echo First room:
echo ------------------------
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Breach into the room. (With your team).
echo 2. Let your team throw a flashbang then get in.
echo 3. Let your team throw a grenade then get in.
echo.
set /p choice4="Choice: "
if "%choice4%" == "1" goto :breachonly4
if "%choice4%" == "2" goto :flashbang4
if "%choice4%" == "3" goto :grenade4


:breachonly4
cls
echo You all died.
pause
goto :lose

:flashbang4
cls
echo You died because of the number of people in the room!
pause
goto :lose
:grenade4
cls
echo You cleared the room only with the grenade.
pause
goto :after4

:after4
cls
echo Second Room:
echo ------------------------
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Breach into the room. (With your team).
echo 2. Let your team throw a flashbang then get in.
echo 3. Let your team throw a grenade then get in.
echo.
set /p choice5="Choice: "
if "%choice5%" == "1" goto :breachonly5
if "%choice5%" == "2" goto :flashbang5
if "%choice5%" == "3" goto :grenade5

:breachonly5
cls
echo You all died.
pause
goto :lose

:flashbang5
cls
echo You won the mission by arresting the murderer and saving the hostage!
pause
goto :won

:grenade5
cls
echo You killed the murderer and the hostage.
pause
goto :lose

:won
color 0a
cls
set swatacheived= You won the swat gamemode.
echo Congrats on winning your first mission! Thanks for playing the first mission of this batch game!
echo You won the 1st mission of the SWAT gamemode.
pause
goto :menu


:exit
exit

:settings
cls
echo --------------------------------
echo Settings not yet made.
pause
cls
goto :menu

:ach
cls
echo Profile:
echo Acheivements:
echo --------------------
echo %zombacheived%
echo %swatacheived%
echo --------------------
pause
goto :menu

:zombmode
cls
color 0a
Title ZOMBIE MODE
echo ZOMBIE MODE
echo ----------------------------
echo TYPE "P" TO PLAY!
echo -----------------------------
echo TYPE "B" TO GO BACK!
echo -----------------------------
set /p playzomb="Choice: "
if "%playzomb%" == "b" goto :menu
if "%playzomb%" == "p" goto :playzombyes

:playzombyes
color 0a
Title ZOMBIE MODE
cls
echo WELCOME TO ZOMBIE MODE WHERE YOU TRY TO SURVIVE AN APOCALYPTIC SCENARIO.
pause
cls
color 0c
echo You hear gunshots on your way there.
pause
cls
echo "This isn't good."
pause
cls
echo You see piles of dead zombies on the roads..
pause
cls
echo You see a person in a car.
pause
cls
color 0a
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Shoot the person and get in the car.
echo 2. Ask him to open his door so you can get in.
echo 3. Shoot his car.
echo.
set /p choice1="Choice: "
if "%choice1%" == "1" goto :shotperson
if "%choice1%" == "2" goto :opendoor
if "%choice1%" == "3" goto :shotcar

:shotperson
cls
color 0c
echo You shot the person in the car.
echo The car has lots of fuel, you get in and drive.
pause
goto :after1

:opendoor
cls
color 0c
echo You ask him to open his door.
echo He shoots you.
pause
goto :died

:shotcar
cls
color 0c
echo You shoot the car.
echo The tires are deflated now.
echo The person in the car shoots and kills you before you have the time to react.
pause
goto :died

:after1
cls
color 0c
echo You drive down the road and crash into the pile of dead bodies.
echo They seem to come to life.
pause
cls
color 0a
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Get out and shoot the zombies.
echo 2. Shoot the zombies from inside.
echo.
set /p choice2="Choice: "
if "%choice2%" == "1" goto :shotzombie1
if "%choice2%" == "2" goto :insideshotzombie1

:shotzombie1
cls
color 0c
echo You killed your first zombies, nice work.
pause
goto :after2

:insideshotzombie1
echo The glass blinded you.
echo YOU DIED.
pause
goto :died

:after2
cls
color 0a
echo You get back in the car.
echo There was a baby in the back, the baby was infected.
pause
goto :babyinfectedinback

:babyinfectedinback
color 0a
cls
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Shoot the baby.
echo 2. Ignore it.
echo.
set /p choice3="Choice: "
if "%choice3%" == "1" goto :shotbaby
if "%choice3%" == "2" goto :ignore1

:shotbaby
cls
color 0c
echo You shot the baby.
pause
goto :after3

:ignore1
cls
color 0c
echo The baby jumps on you and kills you.
pause
goto :died

:after3
cls
echo You keep driving.
pause
:goto after4

:after4
cls
echo You get to a house and start looking for healing supplies.
echo You find a medkit.
pause
cls
echo A zombie jumps on you from behind.
pause
color 0a
cls
echo What do you do?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Shoot the zombie.
echo 2. Punch the zombie.
echo.
set /p choice4="Choice: "
if "%choice4%" == "1" goto :shotzomb23
if "%choice4%" == "2" goto :punchzomb

:shotzomb23
cls
echo You shot the zombie and continued searching.
echo You stop to heal.
pause
goto :afterheal

:punchzomb
cls
echo He bit you.
echo You turned into a zombie.
pause
goto :died

:afterheal
cls
color 0a
echo You find ammo for your pistol and an AK-47 with no bullets. Which do you choose?
echo.
echo Note: In this game you always pick the number at the beginning of each choice.
echo.
echo 1. Ammo for pistol.
echo 2. AK-47.
echo.
set /p choice5="Choice: "
if "%choice5%" == "1" set choice25= ammo for your pistol
if "%choice5%" == "2" set choice25= the AK-47
cls
echo Game: So you chose%choice25%?
set /p answerquestion="Answer: "
echo Game: Very cool!
pause
goto :after5

:after5
cls
set zombacheived= You beat the zombie gamemode.
echo You find another car with fuel and escape.
echo The rest of the story will be in another episode.
echo THE END
echo You beat Zombie Mode.
pause
goto :episode2


:secret
cls
echo sans
pause
goto :menu

:lose
Title Loss
color 0c
cls
echo YOU LOST THE MISSION.
pause
goto :menu

:died
Title YOU DIED
color 0c
echo You Died.
pause
goto :menu

:episode2
cls
echo So you continue with %choice25%.
pause
cls
goto :menu


