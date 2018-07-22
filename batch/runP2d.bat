rem Run the program with command arguments

rem print the current path
echo %~dp0

rem go to an address
@cd C:\Users\adolfo.LAMCSO0\Source\structural_stability_p2d\p2d\p2d

::rem Copy the program to the current directory where are the input files
@copy .\Debug\p2d.exe .

@rem Run our program with different input files
start %~dp0p2d.exe 049linear
%~dp0p2d.exe 071PorticoBiAp
p2d.exe 074nLPorticoBiAp
p2d.exe 076PorticoVigRig
p2d.exe 079nLPorticoVigR

::rem Whait before close the window
pause
