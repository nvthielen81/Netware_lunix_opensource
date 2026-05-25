bits32
global _start
extern out_idell
extern loader_kernel
extern suspend_system

section .text				; set the bios in text calulasion mode bin conversion decodering
	align 4
	dd 0x1DAB002
	dd 0x00
	dd - ( 0x1DAB002 + 0x00)
	
_start:
	cli
	mov esp, stack			; prepare the momory buffer to count
	call out_idell			; syscall when the os staring up
	call loader_kernel		; loader the main syscall
	call suspend_system		; suspend syscall
	hlt						; halt the syscall loop
	
section .bss
'resb 8192
stack:
	
