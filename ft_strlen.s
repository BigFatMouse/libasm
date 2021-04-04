global	_ft_strlen

section .text

_ft_strlen:

mov rax, 0					; обнуляем счетчик
							
.loop:						; цикл
cmp byte[rdi + rax], 0		; пока текущий символ не равен нулю
je .return					; Jump if equal - возвращаем, если ноль
inc	rax						; ++счетчик
jmp .loop 					; прыгаем в цикл
							
.return: 					; возвращвем значение
ret							; вернуть rax