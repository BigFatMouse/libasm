global	_ft_write
extern ___error

section .text

_ft_write:

mov rax, 0x2000004						; код системного вызова write
syscall									; системный вызов
jc .error								; Jump if carry (CF = 1) Флаг переноса, содержит крайний левый (старший) бит после вычислений.
ret

.error:
push rax								; сохраняем rax в стек
call ___error							; вызываем ___error, она возвращает в rax указатель, куда нужно поместить код ошибки 
pop qword[rax]							; записываем по указателю rax то, что сохранили на стеке
mov rax, -1								; записываем в rax -1 со стека
