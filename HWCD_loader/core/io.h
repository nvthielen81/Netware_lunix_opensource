#ifdef _IO_H
#define _IO_H 1

#include "stdint.h"

; The I/O ports are used to communicate whit the hardware.
#define FB_COMMAND_PORT 0x3D4
#define FB_DATA_PORT 0x3D5


#define FB_HIGH_BYTE_COMMAND 0x0E
#define FB_LOW_BYTE_COMMAND 0x0F

uint8_t inb(uint16_t port);
void outb(int16_t port, unit8_t, valeu);
uint8_t scan();

void move_cursor(int row, int col);
void printprompt(void);