@echo off
REM http://stackoverflow.com/questions/3618863/batch-script-latin-characters
REM use codification UTF-8 (without BOM)
REM on notepad++ go to formatar and Codificação em UTF-8 (sem BOM)
REM remember use :wq to write and quit.
REM for copy change format to ANSI, copy and after change again to UTF-8 (sem BOM)

chcp 1252

REM echo %~n0

REM pause

REM chcp 65001
REM pause
REM set nome=Disserta褯_adolfo_Rev12_fromCarl.

REM never give speces in an assigment setence.

REM set nome=Disserta褯_adolfo_Rev12_fromCarl.

set nome=%~n0
@echo on
pandoc -s %nome%.docx -t markdown -o %nome%.md
pause
@echo off

 copy /Y %nome%.md C:\Users\adolfo.LAMCSO0\Documents\msc_word\
 cd C:\Users\adolfo.LAMCSO0\Documents\msc_word\
 git status
 pause
 git add %name%.md
 git commit
 git push
 pause
