REM http://stackoverflow.com/questions/3618863/batch-script-latin-characters
REM use codification UTF-8 (without BOM)
REM on notepad++ go to formatar and CodificaÃ§Ã£o em UTF-8 (sem BOM)
REM remember use :wq to write and quit.
chcp 1252
REM chcp 65001
pandoc -s Dissertação_MscAC.docx -t markdown -o Dissertação_MscAC.md
copy /Y Dissertação_MscAC.md C:\Users\adolfo.LAMCSO0\Documents\msc_word\
cd C:\Users\adolfo.LAMCSO0\Documents\msc_word\
git status
pause
git add Dissertação_MscAC.md
git commit
git push
pause
