BITS 32

section .text

	global _start


	_start:

	mov eax,3
	mov ecx,ile
	mov edx,1
	int 80h

	mov ecx,[ile]
	sub ecx,48


	xor ebx,ebx
	mov [ile],ecx
	mov eax,[ile]

	loop1:
                push eax

                mov eax,[ile]
		loop2:
		push eax
		mov eax,4
		mov ecx,text
		mov edx,textlen
		int 80h

		pop eax
		dec eax
		cmp eax,0
		jne loop2


		mov eax,4
		mov ecx,crnl
		mov edx,crnllen
		int 80h
                pop eax
                dec eax
                cmp eax,0
                jne loop1
                end:
		mov eax,1
		int 80h

















	mov eax,1
	xor ebx,ebx
	int 80h




section .data
   buff db 0
	ile  dd 04h
	text db "x",0
	textlen equ  $-text
	crnl db 10,0
	crnllen equ $-crnl
