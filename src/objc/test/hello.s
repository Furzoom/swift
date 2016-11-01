.text
.align 2

.globl MyASMFunc
MyASMFunc:
    // ECX contains the first parameter
    // EDX contains the second parameter
    mov %ecx, %eax
    add %edx, %eax
    ret
