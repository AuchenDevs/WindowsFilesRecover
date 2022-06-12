@echo off

rem set utf-8
chcp 65001

rem title
title Windows files recover - By craciu25_YT / AuchenDevs

REM Variables
set "co=color 0b"
set "ver=BETA 2"
set "by=craciu25_YT"
set "masapps=https://sites.google.com/view/teamdevelopers"
set "github=https://github.com/AuchenDevs"
set "githubc=https://github.com/craciu25yt"
set "ultac=31/12/21"
set "stable=No info"

::Admin 
IF not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /B)



:langselect
cls
color b
echo _____________________________________________________________________________
echo                                                                              )
echo                   [Windows files recover - By craciu25_YT ]                  )
echo                                                                              )
echo                            [ Chose a language ]                              )
echo                                                                              )
echo                                                                              )
echo     [1]. Español / Spanish ..                                                )
echo                                                                              )
echo     [2]. English / Ingles  ..                                                )
echo                                                                              )
echo     [3]. Close / Cerrar ..                                                   )
echo                                                                              )
echo _____________________________________________________________________________)
set/p lang=Select - Selecciona: 
if /i %lang%== 1 goto esmenu
if /i %lang%== 2 goto enmenu
if /i %lang%== 3 exit


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:esmenu
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                   [Windows files recover - By craciu25_YT ]                  )
echo                                                                              )
echo                            [ Elije una opcion ]                              )
echo                                                                              )
echo                                                                              )
echo     [1]. Facil (Simplemente repara. Asi se pondra                            )
echo            automaticamente todos) ..                                         )
echo                                                                              )
echo     [2]. Avanzado (Elije cada comando que es ejecutado)  ..                  )
echo                                                                              )
echo                                                                              )
echo     [3]. Change language                                                     )
echo                                                                              )
echo     [4]. Informacion del programa                                            )
echo                                                                              )
echo     [5]. Cerrar ..                                                           )
echo                                                                              )
echo _____________________________________________________________________________)
set/p esopc=Elije una opcion: 
if /i %esopc%==1 goto esfacil
if /i %esopc%==2 goto espro
if /i %esopc%==3 goto langselect
if /i %esopc%==4 goto esinfo
if /i %esopc%==5 exit


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:esfacil
color 02
echo Bienvenido! Estas apunto de correr el programa en modo facil. Si tienes algun problema contactame en discord craciu25_YT#3332.
echo.
echo Presiona start para seguir.
pause >null
color b
cls
DISM.exe /Online /Cleanup-image /Scanhealth
DISM.exe /Online /Cleanup-image /Restorehealth
sfc /scannow
chkdsk /scan
echo finalizado
pause
goto esmenu


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:espro
color 02
cls
echo Quiere hacer "DISM.exe /Online /Cleanup-image /Scanhealth"(Este comando tambien incluye "DISM.exe /Online /Cleanup-image /Restorehealth")?
set/p espro=Si o no

if /i  %espro%==si goto es-scanhealth
if /i %espro%==s goto es-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto pregsn-es
if /i %espro%==n goto pregsn-es

:es-scanhealth
cls
DISM.exe /Online /Cleanup-image /Scanhealth
DISM.exe /Online /Cleanup-image /Restorehealth
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
goto pregsn-es


:pregsn-es
cls
echo Quiere hacer "sfc /scannow"?
set/p espro=Si o no

if /i %espro%==si goto es-scannow
if /i %espro%==s goto es-scannow
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto pregch-es
if /i %espro%==n goto pregch-es

:es-scannow
cls
sfc /scannow
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
goto pregsn-es

:pregch-es
cls
echo Quiere hacer "chkdsk /scan"?
set/p espro=Si o no

if /i %espro%==si goto es-scanhealth
if /i %espro%==s goto es-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto es-scanhealth
if /i %espro%==n goto es-scanhealth


:chkdsk-es
cls
chkdsk /scan
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
cls 
echo Has finalizado! Para ir al menu pusla enter.
pause >null
goto esmenu


:esinfo
cls
echo __________________________________
echo.
echo APPInfo                           
echo.
echo.
echo Version: %ver%                    
echo.
echo By %by%                           
echo.
echo Mas apps en:                      
echo %masapps%    
echo.
echo Github AuchenDevs: %github% 
echo.
echo Github craciu: %githubc%
echo.
echo Dia que se finalizo la %ver%:        
echo %ultac%   
echo.
echo Ver. estable: %stable%          
echo.
echo Esta script fue creada originalmente para microsoft community              
echo __________________________________
echo.
echo.
echo Pulsa enter para volver al menu
pause >null








REM ~~~~~~~~~~~~~~~~~~~~~~~~
:enmenu
cls
echo _____________________________________________________________________________
echo                                                                              )
echo                   [Windows files recover - By craciu25_YT ]                  )
echo                                                                              )
echo                           [ Selct one option ]                               )
echo                                                                              )
echo                                                                              )
echo     [1]. Easy (Repair all)                                                   )
echo                                                                              )
echo     [2]. Avanzado (Elije cada comando que es ejecutado)  ..                  )
echo                                                                              )
echo                                                                              )
echo     [3]. Change language ..                                                  )
echo                                                                              )
echo     [4]. Program info ..                                                     )
echo                                                                              )
echo     [5]. Close ..                                                            )
echo                                                                              )
echo _____________________________________________________________________________)
set/p esopc=Elije una opcion: 
if /i %esopc%==1 goto enfacil
if /i %esopc%==2 goto enpro
if /i %esopc%==3 goto langselect
if /i %esopc%==4 goto eninfo
if /i %esopc%==5 exit


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:enfacil
color 02
echo Welcome! You are nearly to run the command in easy mode. If you have problems send me one discord friend request craciu25_YT#3332.
echo.
echo Press start for next.
pause >null
color b
cls

DISM.exe /Online /Cleanup-image /Scanhealth

DISM.exe /Online /Cleanup-image /Restorehealth

sfc /scannow

chkdsk /scan

echo FINISHED! (Press enter for next command)
PAUSE 
goto esmenu


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:enpro
color 02
cls
echo You want to do "DISM.exe /Online /Cleanup-image /Scanhealth"(This command do too "DISM.exe /Online /Cleanup-image /Restorehealth")?
set/p espro=Yes or No

if /i %espro%==yes goto en-scanhealth
if /i %espro%==Y goto en-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto pregsn-en
if /i %espro%==n goto pregsn-en

:en-scanhealth
cls
DISM.exe /Online /Cleanup-image /Scanhealth
DISM.exe /Online /Cleanup-image /Restorehealth
echo FINISHED! (Press enter for next command)
pause >null
goto pregsn-en


:pregsn-en
cls
echo You want to do "sfc /scannow"?
set/p espro=Yes or No

if /i %espro%==yes goto en-scannow
if /i  %espro%==Y goto en-scannow
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto pregch-en
if /i %espro%==n goto pregsn-en



:en-scannow
cls
sfc /scannow
echo FINISHED! (Press enter for next command)
pause >null
goto pregsn-en

:pregch-en
cls
echo Quiere hacer "chkdsk /scan"?
set/p espro=Yes or No

if /i %espro%==si goto en-scanhealth
if /i %espro%==s goto en-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if /i %espro%==no goto finish
if /i %espro%==n goto finish


:chkdsk-en
cls
chkdsk /scan
echo FINISHED! (Press enter for next command)
pause >null
cls 
goto finish

:finish
echo You finish! For go to the menu press enter.
pause >null
goto enmenu


:eninfo
cls
echo __________________________________
echo.
echo APPInfo                           
echo.
echo.
echo Version: %ver%                    
echo.
echo By %by%                           
echo.
echo More apps on:                      
echo %masapps%    
echo.
echo Github AuchenDevs: %github% 
echo.
echo Github craciu: %githubc%
echo.
echo Day of launch for %ver%:        
echo %ultac%   
echo.
echo Ver. estable: %stable%
echo __________________________________
echo.
echo.
echo Press enter for go to the menu
pause >null
goto enmenu