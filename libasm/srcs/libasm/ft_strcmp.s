;int strcmp(const char *s1, const char *s2) {
;	while (*s1 && *s2) {
;		if (*s1 != *s2)
;			break;
;		++s1;
;		++s2;
;	}
;	return *s1 - *s2;
;}

section .text
global ft_strcmp

ft_strcmp:
	xor rcx, rcx
loop:
	mov al, byte[rdi + rcx]
	cmp al, 0
	je end

	mov r8b, byte[rsi + rcx]
	cmp r8b, 0
	je end

	sub al, r8b
	jnz end

	inc rcx
	jmp loop
end:
	movzx rax, byte[rdi + rcx]
	movzx r8, byte[rsi + rcx]

	sub rax, r8
	ret
