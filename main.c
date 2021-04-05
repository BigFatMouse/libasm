#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

void ft_putchar(char *c);
void hello_world(void);
size_t	ft_strlen(char *str);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main(void)
{
//  char *str = "12";
//  char dst[20];
 //char *str2 = "123";
 //int i = ft_strlen(str);
 //printf("%s\n", ft_strcpy(dst, str));
 //printf("%d\n", i);
 //ft_putchar(c);
 //hello_world();
//  printf("my_______%d\n", ft_strcmp(str, str2));
//  printf("original_%d\n", strcmp(str, str2));
char c = 'c';
ft_write(1, "c", 1);
write(1, "\n", 1);
write(1, "c", 1);
write(1, "\n", 1);
//printf("%d %s\n", errno, perror(errno));
return (0);
}