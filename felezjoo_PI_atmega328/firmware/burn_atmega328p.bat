@echo off

set mcu=atmega328p   

:::: // Tiny13 default
::set hfuse=0xFB

:::: // internal RC 9.6MHz, default
::set lfuse=0x3A

:::: // internal RC 4.8MHz
::set lfuse=0x39

:::: // internal RC 128KHz
::set lfuse=0x3B


::set main=FelezJoo_PI_v3_35_full_version_no_counter.hex
set main=FelezJoo_PI_v3_35.hex
set ac=C:\WinAVR-20100110

path %ac%\bin;%ac%\utils\bin;%path%;

@echo on

::avrdude -c usbtiny -p t13 -U flash:w:"%main%":a -U lfuse:w:%lfuse%:m  -U hfuse:w:%hfuse%:m
avrdude -c usbtiny -p %mcu% -U flash:w:"%main%":a

pause
:end