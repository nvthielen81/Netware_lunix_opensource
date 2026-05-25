; ASM 32-Bits Novell ( NetWare Lunix Version System core kernel version 1.0 )
; this is the Handeler loader file for the memory of the system program
; Wy, (a) System call bios ( life of nater in grieks ) berad. 
; persnal i nead haderware decoder/encoder 
Bits 32
Global _main_start
Extern recovery_main
Extern main
Extern system_iddel

section .text
	align 4
	dd 0x1BADB002 ; magic nubber for the mutiboot handeler  
	dd 0x00 ; the flags of the fesrt byte of the system call towards the bios and the kerenl.
	dd (0x1BADB002 + 0x00)
; ############################################################################################################################################################
; and by tipping Extern the Ethernet adapter for internet the TM(C)TM.
; for the byte data to interact whit the components of the computer. 
; and the dd 0x1 is for indecision  of the vectors that in the call sys of the bios stand for 
; the call is make to the memory and dump the information to the CPU thew core calculator object or i/o regisstrion electrons emitter.
; the memory of the iner data bus nead to by fildt whit the data of the system the 0x00, 0x01 and so on is the int HEX
; of the interupts the jump true the program clock caller ascii ( clock of the ouwers , and the minits ) and the 0x00 for the bios bit call up.
;  and the FET file electron trasmiter clock of the CPU that e Frion system is the recat on headt and coldt
; i/o od the DD call the fesr moterbordt 0x00 and load the next step of the system list file binare data of the on the backboon bus memory
; 
