strlen: push ebp        ; 1 parametr (address string)
        mov ebp, esp
        push ebx
        push esi
        push edi
        
        mov esi, [ebp+8]
        xor eax, eax

lp.:     mov bl, [esi]
        cmp bl, 0
        jz lp_quite
        inc eax
        inc esi
        jmp lp.

lp_quite:
        pop edi
        pop esi
        pop ebx
        pop ebp
        ret
