#include <stdio.h>
#include <string.h>

void ft_putchar(char *c);
void hello_world(void);
size_t	ft_strlen(char *str);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);

int main(void)
{
 char *str = "123";
 char dst[20];
 char *str2 = "12";
 //int i = ft_strlen(str);
 //printf("%s\n", ft_strcpy(dst, str));
 //printf("%d\n", i);
 //ft_putchar(c);
 //hello_world();
 printf("my_______%d\n", ft_strcmp(str, str2));
  printf("original_%d\n", strcmp(str, str2));
 return (0);
}