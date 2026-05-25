static char* const VGA_MEMORY = (char*)0xB8000;
static const int VGA_WIDTH = 80;
static const int VGA_HEIGHT = 25;

void kernel_early(void)
{ 

}

void main(void)
{

    const char *message = "Lunix NetWare Edition 1.0";
    unsigned int i = 0;
    unsigned int j = 0;
    while(message[i] != '\0') {
        VGA_MEMORY[j] = message[i];
        VGA_MEMORY[j + 1] = 0x07;
        
        i++;
        j=j + 2;
    }


}


