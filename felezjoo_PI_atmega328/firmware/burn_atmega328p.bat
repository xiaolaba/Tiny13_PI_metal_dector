@echo off

set mcu=atmega328p   

:::: // atmega328p, arduino nano, testing, 1602LCD display ok
::set efuse=0xFD
::set hfuse=0xDA
::set lfuse=0xFF

:::: // atmega328p, felezjoo v3.35 author said, testing, 1602LCD display ok
set efuse=0xFC
set hfuse=0xD1
set lfuse=0xF7

::download from https://simplemetaldetector.com/pulse-induction-metal-detectors/felezjoo-pi-metal-detector/felezjoo-pi-download-files/
::set main=FelezJoo_PI_v1_50.hex
::set main=FelezJoo_PI_v2_40.hex
::set main=FelezJoo_PI_v3_00.hex
::set main=FelezJoo_PI_v3_05.hex
::set main=FelezJoo_PI_v3_20.hex
::set main=FelezJoo_PI_v3_23.hex
::set main=FelezJoo_PI_v3_30.hex
::set main=FelezJoo_PI_v3_35_full_version_no_counter_not_working.hex
::set main=FelezJoo_PI_v3_35_not_wowrking.hex

::download from https://felezjooblog.wordpress.com/
set main=FelezJoo_PI_v3_35.hex




set ac=C:\WinAVR-20100110

path %ac%\bin;%ac%\utils\bin;%path%;

@echo on

avrdude -c usbtiny -p %mcu% -U flash:w:"%main%":a -U lfuse:w:%lfuse%:m  -U hfuse:w:%hfuse%:m
::avrdude -c usbtiny -p %mcu% -U flash:w:"%main%":a

pause
:end