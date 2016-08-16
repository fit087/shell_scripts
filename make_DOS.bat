@echo off
REM Run with the Winpython Command Prompt
@echo.
echo "This script updates the python files to the current version of the jupyter notebook"
@echo.
echo "jupyter nbconvert --to format file_name.ipynb"
@echo.
@echo on
jupyter nbconvert --to python "Pitot Tube.ipynb"
pause