@echo off

:: include
if exist include rmdir include /s /q
mkdir include
mkdir include\Utils
mkdir include\Layout
mkdir include\Core
mkdir include\Control

copy DuiLib\UIlib.h include /y
copy DuiLib\Utils\*.h include\Utils /y
copy DuiLib\Utils\*.tlh include\Utils /y
copy DuiLib\Layout\*.h include\Layout /y
copy DuiLib\Core\*.h include\Core /y
copy DuiLib\Control\*.h include\Control /y

::libs
if exist libs rmdir libs /s /q
mkdir libs

copy Lib\DuiLib.lib libs\ /y
copy bin\DuiLib.dll libs\ /y
copy bin\DuiLib.pdb libs\ /y


pause