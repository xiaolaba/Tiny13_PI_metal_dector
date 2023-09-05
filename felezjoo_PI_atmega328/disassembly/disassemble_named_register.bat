echo off
cls


set main=FelezJoo_PI_v3_35.hex

set ac=C:\WinAVR-20100110
::set ac=C:\avr8-gnu-toolchain-win32_x86\bin

path %ac%\bin;%ac%\utils\bin;%path%;

:: show hex format string
python adump.py atmega328p -S %main%
python adump.py atmega328p -S FelezJoo_PI_v3_35.hex

:: disassemble hex to asm, named register
:: see this help, https://electronics.stackexchange.com/questions/16670/avr-disassembler-with-named-register-support
python adump.py atmega328p -j .sec1 -d -S -m avr5 FelezJoo_PI_v3_35.hex > FelezJoo_PI_v3_35.hex_atmega328p_named_register.asm
echo asm with regsiter named, done

:end
pause

