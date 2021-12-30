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

REM Admin detector
IF %ERRORLEVEL% EQU 0 ( SET USERSTATUS=Administrator) else (
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
echo.
echo You must to run this program like admin! / Tienes que ejecutar este programa como administrador!
echo.
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
timeout 4 >null 
exit
)

REM ~~~~~~~~~~~~~~~~~~~~~~~~
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
if %lang%== 1 goto esmenu
if %lang%== 2 goto enmenu
if %lang%== 3 exit


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
if %esopc%==1 goto esfacil
if %esopc%==2 goto espro
if %esopc%==3 goto langselect
if %esopc%==4 goto esinfo
if %esopc%==5 exit


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
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
DISM.exe /Online /Cleanup-image /Restorehealth
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
sfc /scannow
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
pause >null
chkdsk /scan
echo TERMINADO! (Presiona enter cuando quieras hacer el siguiente comando)
goto esmenu


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:espro
color 02
cls
echo Quiere hacer "DISM.exe /Online /Cleanup-image /Scanhealth"(Este comando tambien incluye "DISM.exe /Online /Cleanup-image /Restorehealth")?
set/p espro=Si o no

if %espro%==si goto es-scanhealth
if %espro%==sI goto es-scanhealth
if %espro%==SI goto es-scanhealth
if %espro%==Si goto es-scanhealth
if %espro%==s goto es-scanhealth
if %espro%==S goto es-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto pregsn-es
if %espro%==nO goto pregsn-es
if %espro%==NO goto pregsn-es
if %espro%==No goto pregsn-es
if %espro%==n goto pregsn-es
if %espro%==N goto pregsn-es

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

if %espro%==si goto es-scannow
if %espro%==sI goto es-scannow
if %espro%==SI goto es-scannow
if %espro%==Si goto es-scannow
if %espro%==s goto es-scannow
if %espro%==S goto es-scannow
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto pregch-es
if %espro%==nO goto pregch-es
if %espro%==NO goto pregch-es
if %espro%==No goto pregch-es
if %espro%==n goto pregch-es
if %espro%==N goto pregch-es


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

if %espro%==si goto es-scanhealth
if %espro%==sI goto es-scanhealth
if %espro%==SI goto es-scanhealth
if %espro%==Si goto es-scanhealth
if %espro%==s goto es-scanhealth
if %espro%==S goto es-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto es-scanhealth
if %espro%==nO goto es-scanhealth
if %espro%==NO goto es-scanhealth
if %espro%==No goto es-scanhealth
if %espro%==n goto es-scanhealth
if %espro%==N goto es-scanhealth


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
echo __________________________________
echo.
echo.
echo Pulsa enter para volver al menu
pause >null








REM ~~~~~~~~~~~~~~~~~~~~~~~~
:esmenu
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
echo     [5]. Close ..                                                           )
echo                                                                              )
echo _____________________________________________________________________________)
set/p esopc=Elije una opcion: 
if %esopc%==1 goto enfacil
if %esopc%==2 goto espro
if %esopc%==3 goto langselect
if %esopc%==4 goto esinfo
if %esopc%==5 exit


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
echo FINISHED! (Press enter for next command)
pause >null
cls
DISM.exe /Online /Cleanup-image /Restorehealth
echo FINISHED! (Press enter for next command)
pause >null
cls
sfc /scannow
echo FINISHED! (Press enter for next command)
pause >null
cls
chkdsk /scan
echo FINISHED! (Press enter for next command)
goto esmenu


REM ~~~~~~~~~~~~~~~~~~~~~~~~
:espro
color 02
cls
echo You want to do "DISM.exe /Online /Cleanup-image /Scanhealth"(This command do too "DISM.exe /Online /Cleanup-image /Restorehealth")?
set/p espro=Yes or No

if %espro%==yes goto en-scanhealth
if %espro%==yeS goto en-scanhealth
if %espro%==yES goto en-scanhealth
if %espro%==YES goto en-scanhealth
if %espro%==YEs goto en-scanhealth
if %espro%==Yes goto en-scanhealth
if %espro%==YeS goto en-scanhealth
if %espro%==yEs goto en-scanhealth
if %espro%==Y goto en-scanhealth
if %espro%==y goto en-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto pregsn-en
if %espro%==nO goto pregsn-en
if %espro%==NO goto pregsn-en
if %espro%==No goto pregsn-en
if %espro%==n goto pregsn-en
if %espro%==N goto pregsn-en

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

if %espro%==yes goto en-scannow
if %espro%==yeS goto en-scannow
if %espro%==yES goto en-scannow
if %espro%==YES goto en-scannow
if %espro%==YEs goto en-scannow
if %espro%==Yes goto en-scannow
if %espro%==YeS goto en-scannow
if %espro%==yEs goto en-scannow
if %espro%==Y goto en-scannow
if %espro%==y goto en-scannow
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto pregch-en
if %espro%==nO goto pregsn-en
if %espro%==NO goto pregsn-en
if %espro%==No goto pregsn-en
if %espro%==n goto pregsn-en
if %espro%==N goto pregsn-en



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

if %espro%==si goto en-scanhealth
if %espro%==sI goto en-scanhealth
if %espro%==SI goto en-scanhealth
if %espro%==Si goto en-scanhealth
if %espro%==s goto en-scanhealth
if %espro%==S goto en-scanhealth
REM ~~~~~~~~~~~~~~~~~~~~~~~~
if %espro%==no goto finish
if %espro%==nO goto finish
if %espro%==NO goto finish
if %espro%==No goto finish
if %espro%==n goto finish
if %espro%==N goto finish


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