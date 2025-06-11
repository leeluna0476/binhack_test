section .text ; 아래 코드를 바이너리 파일 형식의 .text 영역에 배치하겠다는 의미. 여기서는 ELF (System V 계열 유닉스 시스템에서 사용하는 바이너리 파일 형식.)
global ft_strlen ; 외부 파일에서 호출할 수 있도록 공개.

ft_strlen:
	xor rax, rax
loop:
	cmp byte[rdi + rax], 0
	je end
	inc rax
	jmp loop
end:
	ret
