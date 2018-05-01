BITS 32
section .text

    global _start

        _start:

		


		mov eax,3
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

		mov eax,1
		int 80h








    section .data

	text db "x",0
	textlen equ  $-text
	crnl db 10,0
	crnllen equ $-crnl
