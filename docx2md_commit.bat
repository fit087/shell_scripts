REM http://stackoverflow.com/questions/3618863/batch-script-latin-characters
REM use codification UTF-8 (without BOM)
REM on notepad++ go to formatar and CodificaÃ§Ã£o em UTF-8 (sem BOM)
REM remember use :wq to write and quit.
REM for copy change format to ANSI, copy and after change again to UTF-8 (sem BOM)
chcp 1252
REM chcp 65001
REM pause
REM set nome=Dissertação_adolfo_Rev12_fromCarl.

REM never give speces in an assigment setence.

set nome=Dissertação_adolfo_Rev12_fromCarl.
pandoc -s %nome%docx -t markdown -o %nome%md
pause

REM copy /Y %nome%md C:\Users\adolfo.LAMCSO0\Documents\msc_word\
REM cd C:\Users\adolfo.LAMCSO0\Documents\msc_word\
REM git status
REM pause
REM git add %name%md
REM git commit
REM git push
REM pause

