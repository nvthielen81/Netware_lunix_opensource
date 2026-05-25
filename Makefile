CC=gcc
TARGET=myiso
C_FILES=./HWCD_loader/kernel.c \
	./HWCD_loader/core/string.c
OBJS=$(C_FILES:.c=.o)

all compile: $(TARGET)
all: finale
.PHONY: all compile clean finale

%.o:
	$(CC) -c $(@:.o=.c) -o $@ -ffreestanding -fno-exceptions -m32

$(TARGET): $(OBJS)
	$(shell nasm -f elf HWCD_Netware/sys.asm -o HWCD_Netware/sys.o)
	$(CC) -m32 -nostdlib -nodefaultlibs -lgcc HWCD_Netware/sys.o $? -T linker.ld -z noexecstack -o $(TARGET)

finale:
	$(shell cd ~/HWCD/)
	$(shell cp $(TARGET) ./iso/boot/$(TARGET))
	$(shell grub-mkrescue iso --output=$(TARGET).iso)

clean:
	rm -f *.o $(TARGET) $(TARGET).iso
	find . -name \*.o | xargs --no-run-if-empty rm
