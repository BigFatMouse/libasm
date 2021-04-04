#include <stdio.h>

void ft_putchar(char *c);
void hello_world(void);
size_t	ft_strlen(char *str);
char *ft_strcpy(char *dst, const char *src);

int main(void)
{
 char *str = "112";
 char dst[20];
 //int i = ft_strlen(str);
 printf("%s\n", ft_strcpy(dst, str));
 //printf("%d\n", i);
 //ft_putchar(c);
 //hello_world();
 return (0);
}