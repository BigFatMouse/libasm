global	_ft_read
extern ___error

section .text

_ft_read:

mov rax, 0x2000003						; код системного вызова read
syscall									; системный вызов
jc .error								; Jump if carry (CF = 1) Флаг переноса, содержит крайний левый (старший) бит после вычислений.
ret

.error:
push rax								; сохраняем rax в стек
call ___error							; вызываем ___error, она возвращает в rax указатель, куда нужно поместить код ошибки 
pop qword[rax]							; записываем по указателю rax то, что сохранили на стеке
mov rax, -1								; записываем в rax -1 со стека
