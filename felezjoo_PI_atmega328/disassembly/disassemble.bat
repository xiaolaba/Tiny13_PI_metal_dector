@echo off

set mcu=atmega328p

set main=FelezJoo_PI_v3_35.hex
set ac=C:\WinAVR-20100110
::set ac=C:\avr8-gnu-toolchain-win32_x86\bin

path %ac%\bin;%ac%\utils\bin;%path%;


avr-objdump -j .sec1 -d -S -m avr5 %main% > %main%_atmega328p.asm
echo hex to asm is done


avr-objcopy.exe -I ihex -O binary %main% %main%_atmega328p.bin
echo hex to binary is done

pause