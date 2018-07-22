echo @off
tskill skype
REM You can do this with 'taskkill'. With the /IM parameter, you can specify image names. Example:

REM taskkill /im somecorporateprocess.exe
REM taskkill /im skype.exe
REM taskkill /im skype
REM You can also do this to 'force' kill:

REM taskkill /f /im somecorporateprocess.exe
REM taskkill /f /im skype.exe
REM taskkill /f /im skype

REM Another option is WMIC :

REM wmic Path win32_process Where "Caption Like 'MyProcess.exe'" Call Terminate
REM wmic offer even more flexibility than taskkill .With wmic Path win32_process get you can see the available fileds you can filter.
