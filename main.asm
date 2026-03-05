%include"pcall.inc"
%include"strlen.asm"

global _start

_start: xor eax, eax

        mov ecx, [esp]
        dec ecx
        
        cmp ecx, 0
        jz finish

        xor ebx, ebx    ;   max length
        xor edx, edx    ;   number parametr with max length
        xor edi, edi    ;   counter for easy cycle

        mov esi, esp    
        add esi, 8      ; first parametr

lp:     pcall strlen, [esi]
        
        cmp eax, ebx
        jg max_length
        jmp next

max_length:
        mov ebx, eax
        mov edx, edi
        
next:   add esi, 4
        inc edi
        loop lp

        ;   EDX store number parametr to stdout

        mov edi, ebx

        mov esi, esp
        add esi, 8
        mov eax, edx
        mov edx, 4
        mul edx
        add esi, eax

        mov eax, 4      ; write
        mov ebx, 1
        mov ecx, [esi]
        mov edx, edi
        int 80h

finish:
        mov eax, 1
        mov ebx, 0
        int 80h
