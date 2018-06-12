section .text
global _ft_cat

%define	BUFF_SIZE 4096
%define STDOUT 1
%define SYS_READ 0x2000003
%define SYS_WRITE 0x2000004

_ft_cat:
    push    r8
    mov     r8,    rdi              ; saving fd in rbx
    push    rbp
    mov     rbp,    rsp             ; allocating char[buff_size] on the stack
    sub     rbp,    BUFF_SIZE       ; rbp -> buffer 

read:
    mov     rax,    SYS_READ
    mov     rdi,    r8        
    mov     rsi,    rbp
    mov     rdx,    BUFF_SIZE
    syscall
    jc      end
    cmp     rax,    0               ; read failed
    je      end

write:
    mov     rdx,    rax             
    mov     rax,    SYS_WRITE        
    mov     rdi,    STDOUT 
    mov     rsi,    rbp             
    syscall
    jc      end
    cmp     rax,    0               ; write failed
    je      end
    jmp     read                    ; read again

end:
    pop rbp
    pop rbx
    ret
