global	_ft_strcmp

section	.text

_ft_strcmp:

mov rax, 0
mov rcx, 0
mov rdx, 0							; обнуляем все

.loop:
mov al, byte[rdi + rdx]				; копируем символ первой строки в dl 
mov cl, byte[rsi + rdx]				; копируем символ второй строки в cl
inc	rdx								; счетчик ++
cmp al, 0
je .return							; выход, если первая строка закончилась
cmp cl, 0
je .return							; выход, если вторая строка закончилась
cmp al, cl										
je .loop							; если равны, возвращаемся в цикл

.return:
sub rax, rcx						; возвращаем разницу
ret