global	_ft_strcpy

section	.text

_ft_strcpy:

mov rax, 0							; обнуляем счетчик
cmp rdi, 0							; проверяем первый аргумент (dst)
je .return
cmp rsi, 0							; проверяем второй аргумент (src)
je .return							; Jump if equal - возвращаем, если ноль

.loop:								; цикл								
mov dl, [rsi + rax]					; копируем из src в dl 
mov [rdi + rax], dl					; копируем из dl в dst
inc	rax								; ++счетчик
cmp dl, 0							; пока символ не равен нулю
jne .loop 							; Jump if not equal - прыгаем в цикл, если не равен нулю

.return: 							; возвращаем значение
mov rax, rdi						; копируем арг1 (dst) в rax
ret	