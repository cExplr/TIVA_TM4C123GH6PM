#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_sysctl.h"
#include "inc/hw_types.h"
#include "driverlib/flash.h"
#include "driverlib/sysctl.h"
#include "grlib/grlib.h"
#include "grlib/widget.h"
#include "utils/ringbuf.h"
#include "utils/ustdlib.h"
#include "Kentec320x240x16_ssd2119_8bit.h"
#include "touch.h"
#include "grlib/canvas.h"

tContext g_sContext;


// REFER TO http://www.ti.com/lit/ug/spmu300d/spmu300d.pdf

int main(void)
{
   SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                   SYSCTL_XTAL_16MHZ);


    Kentec320x240x16_SSD2119Init();

    GrContextInit(&g_sContext, &g_sKentec320x240x16_SSD2119);
    tRectangle background;

    // Since tRectangle type is initialized and tRectangle comes in form of a struct, we need to fill them in
    background.i16XMax = GrContextDpyWidthGet(&g_sContext) - 1 ;    //GrContextDpyWidthGet get sthe height of the screen
    background.i16XMin = 0 ;
    background.i16YMin = 0 ;
    background.i16YMax = GrContextDpyHeightGet(&g_sContext) - 1 ;


    GrContextForegroundSet(&g_sContext , ClrMediumTurquoise);
    GrRectFill(&g_sContext, &background);           // Fill Wuth Color
    GrRectDraw(&g_sContext, &background);           // Draw it out on the screen


    tRectangle rectangle1;
    tRectangle rectangle2;
    //tRectangle rectangle3;

    rectangle2.i16XMin = 0;
    rectangle2.i16YMin = 0;
    rectangle2.i16XMax = GrContextDpyWidthGet(&g_sContext) /2-1;
    rectangle2.i16YMax = 60;

    GrContextForegroundSet(&g_sContext , ClrDarkBlue);
    GrRectFill(&g_sContext, &rectangle2);
    GrRectDraw(&g_sContext, &rectangle2);

    rectangle1.i16XMin = GrContextDpyWidthGet(&g_sContext) /2;
    rectangle1.i16YMin = 0;
    rectangle1.i16XMax = GrContextDpyWidthGet(&g_sContext) - 1;
    rectangle1.i16YMax = 60;

    GrContextForegroundSet(&g_sContext , ClrDarkGoldenrod);
    GrRectFill(&g_sContext, &rectangle1);
    GrRectDraw(&g_sContext, &rectangle1);

    /*
    rectangle3.i16XMin = 0;
    rectangle3.i16XMax = GrContextDpyWidthGet(&g_sContext) - 1 ;
    rectangle3.i16YMin = 61;
    rectangle3.i16YMax = GrContextDpyHeightGet(&g_sContext) - 1 ;

    GrContextForegroundSet(&g_sContext, ClrLightPink);
    GrRectFill(&g_sContext, &rectangle3);
    GrRectDraw(&g_sContext, &rectangle3);
*/

    GrCircleDraw(&g_sContext, 100 , 100 , 20);  // No need for any initialize
    GrCircleFill(&g_sContext, 100 , 100 , 10);  // Fill up the circle to selected radius

    GrCircleDraw(&g_sContext, 200 , 100 , 20);
    GrCircleFill(&g_sContext, 200 , 100 , 10);

    GrContextForegroundSet(&g_sContext , ClrLightPink); // Change default color ro pink
    GrLineDrawH(&g_sContext, 100, 200 , 150);

    GrContextForegroundSet(&g_sContext , ClrMistyRose);
    GrContextFontSet(&g_sContext , &g_sFontCm18b);          // Font setting is also a must for string drawing operation
    GrStringDrawCentered(&g_sContext, "c3xp1r", -1 , GrContextDpyWidthGet(&g_sContext)/2 , GrContextDpyHeightGet(&g_sContext)/1.25, 0);   // length set to -1 prints the entire string

    while(1)
    {
    }
}
