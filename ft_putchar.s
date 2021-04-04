global _ft_putchar

section .text
_ft_putchar:
 push rsi;
 mov rsi, rdi
 mov rdi, 1
 mov rdx, 1
 mov rax, 1
 syscall
 pop rsi