# Tiny13_PI_metal_dector  

clone https://blog.podkalicki.com/attiny13-pi-metal-detector/ and modified

uses windows avr-gcc to compile, build.bat is build and used, try Make as well  

License : follow the original author's, BSD 3-Clause "New" or "Revised" License  

### Git gui push, no process *.hex, why ? change firmware biuld with "_hex"
firmware produced *_hex but not *.hex  


### add reading material of Pulse-Induction for metal detector   
[ATtiny13-PI_metal_detector_Łukasz_Podkalicki.pdf](/Pulse-Induction/ATtiny13-PI_metal_detector_Łukasz_Podkalicki.pdf)   
[How_Metal_Detectors_Work.pdf](/Pulse-Induction/How_Metal_Detectors_Work.pdf)  
[Metal_detector.pdf](/Pulse-Induction/Metal_detector.pdf)  
[Understanding_The_PI_Detector.pdf](/Pulse-Induction/Understanding_The_PI_Detector.pdf)  
[Understanding_The_PI_Detector_(part_2).pdf](/Pulse-Induction/Understanding_The_PI_Detector_(part_2).pdf)     

### two versions of avr-gcc used setup the path first if using Windows machine,
::set ac=C:\WinAVR-20100110  
:: 2020-09-07, download avr-gcc 3.6 from Microchip  
set ac=C:\avr8-gnu-toolchain-win32_x86  

### two types of firmware build process

1. dosmake.bat, uses make and Makefile, Makefile modified to output to firmware & path
    
2. build.bat, no uses Makefile, must include flag -DF_CPU=%F_CPU%, otherwise WinAVR-20100110 has no warning, but Microchip AVR8 toolchain has warning. listing and asm also produced  

result should be the same
  
