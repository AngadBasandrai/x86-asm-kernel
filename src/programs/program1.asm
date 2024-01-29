call clearTextScreen

mov si, pgmLoadedMsg
call printString

mov ah, 0x00
int 0x16

mov ax, 0x2000
mov es, ax
xor bx, bx

mov ds, ax
mov es, ax
mov fs, ax
mov gs, ax
mov ss, ax

jmp 0x2000:0x0000

%include "src/functions/print_string.asm"
%include "src/screen/clear_text_screen.asm"

pgmLoadedMsg: db 'Program 1, Loaded', 0xA, 0xD, 0

times 512-($-$$) db 0