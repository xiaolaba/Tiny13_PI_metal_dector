@echo off

set mcu=atmega328p

set ac=C:\WinAVR-20100110

path %ac%\bin;%ac%\utils\bin;%path%;

:::: avrdude terminal only
avrdude -c usbtiny -p %mcu% -t

pause
:end