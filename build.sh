arm-none-eabi-gcc -x c -mthumb -D__SAMD51J19A__ -DDEBUG  -I./Include -I./s51_include  -O1 -ffunction-sections -mlong-calls -g3 -Wall -mcpu=cortex-m4 -c -std=gnu99 -MD -MP -MF "main.d" -MT"main.d" -MT"main.o"   -o "main.o" "main.c" 






arm-none-eabi-gcc  -x c -mthumb -D__SAMD51J19A__ -DDEBUG  -I./Include -I./s51_include -O1 -ffunction-sections -mlong-calls -g3 -Wall -mcpu=cortex-m4 -c -std=gnu99 -MD -MP -MF "main.d" -MT"main.d" -MT"main.o"   -o "main.o" "main.c"



arm-none-eabi-gcc  -x c -mthumb -D__SAMD51J19A__ -DDEBUG  -I./Include -I./s51_include  -O1 -ffunction-sections -mlong-calls -g3 -Wall -mcpu=cortex-m4 -c -std=gnu99 -MD -MP -MF "Device_Startup/system_samd51.d" -MT"Device_Startup/system_samd51.d" -MT"Device_Startup/system_samd51.o"   -o "Device_Startup/system_samd51.o" "Device_Startup/system_samd51.c" 





arm-none-eabi-gcc  -x c -mthumb -D__SAMD51J19A__ -DDEBUG  -I./Include -I./s51_include  -O1 -ffunction-sections -mlong-calls -g3 -Wall -mcpu=cortex-m4 -c -std=gnu99 -MD -MP -MF "Device_Startup/startup_samd51.d" -MT"Device_Startup/startup_samd51.d" -MT"Device_Startup/startup_samd51.o"   -o "Device_Startup/startup_samd51.o" "Device_Startup/startup_samd51.c" 




arm-none-eabi-gcc -o main.elf  Device_Startup/startup_samd51.o Device_Startup/system_samd51.o main.o   -mthumb -Wl,-Map="main.map" -Wl,--start-group -Wl,--end-group -LDevice_Startup  -Wl,--gc-sections -mcpu=cortex-m4 -Tsamd51j19a_flash.ld




arm-none-eabi-objcopy -O binary main.elf main.bin


rm main.map main.d main.elf main.o Device_Startup/startup_samd51.d Device_Startup/startup_samd51.o Device_Startup/system_samd51.d Device_Startup/system_samd51.o
