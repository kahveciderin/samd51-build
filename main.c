#include "sam.h"
int main(void)
{
	SystemInit();
	PORT->Group[0].DIRSET.reg = PORT_PA16;
    /* Replace with your application code */
    while (1) 
    {
		PORT->Group[0].OUTTGL.reg = PORT_PA16;
		for (int i = 0; i < 12000000; i++)
		asm("nop");
    }
}

