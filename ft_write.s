global	_ft_write
extern ___error

section .text

_ft_write:

mov rax, 0x200004 ; read 0x200003		; код системного вызова write
syscall									; системный вызов
;jc .error								; Jump if carry (CF = 1) Флаг переноса, содержит крайний левый (старший) бит после вычислений.
;ret

.error:
;push rax								; записываем rax на стек
push -1									; инициализация стека
mov rcx, rax							; сохраняем rax в rcx
call ___error							; вызываем ___error, она возвращает в rax указатель, куда нужно поместить код ошибки 
;pop qword[rax]							; записываем по указателю rax то, что сохранили на стеке
;mov [rax], rcx							; записываем по указателю rax то, что сохранили в rcx
pop rax									; записываем в rax -1 со стека
;mov rax, -1

.return:
ret