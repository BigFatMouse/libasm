global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error

section .text

_ft_strdup:

call _ft_strlen
push rdi				; сохраним аргумент на стеке
mov rax, rdi			; кладем в rdi то, что вернула strlen 
add rdi, 1				; добавляем к strlen единицу
call _malloc			; вызов маллок, который берет значение в rdi 
cmp rax, 0				; если маллок вернул ноль
je .return				; выходим
mov rdi, rax			; записываем в rdi то, что вернул маллок (первый аргумент для вызова strcpy)
pop rsi					; запишем в rsi значение со стека (аргумент)				
call _ft_strcpy			; ft_strcpy(rdi, rsi);
ret

.return:
ret
