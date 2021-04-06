#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include "libasm.h"

extern int errno ;

int main(void)
{
	char *str0 = "123";
	char *str1 = "123456";
	char *str2 = NULL;
	char *str3 = NULL;
	char dst[20];
	char buff;

	// ft_read test
	printf("\n\n-------------ft_read test-------------\n\n");
	printf("\n\nEnter 1 symbol to test ft_read\n\n");	
	ft_read(0, &buff, 1);
	printf("ft_read ____________________________ %c\n", buff);

	// ft_write test

	printf("\n\n-------------ft_write test-----------\n\n");
	ft_write(1, "ft_write_________________________ ", 34);
	ft_write(1, str0, ft_strlen(str0));
	ft_write(1, "\n", 1);
	write(1, "write____________________________ ", 34);
	write(1, str0, ft_strlen(str0));
	write(1, "\n", 1);
	ft_write(1, "ft_write_error _______ ", 23);
	ft_write(1, str2, 1);
	printf("%d %s\n", errno, strerror(errno));
	write(1, "write_error __________ ", 23);
	write(1, str2, 1);
	printf("%d %s\n", errno, strerror(errno));
 
	// ft_strlen test

	printf("\n\n-------------ft_strlen test-----------\n\n");
	printf("ft_strlen(\"%s\") ________________ %lu\n", str1, ft_strlen(str1));
	printf("strlen(\"%s\") ___________________ %lu\n", str1, strlen(str1));

	// ft_strlcpy test

	printf("\n\n-------------ft_strcpy test-----------\n\n");
	printf("ft_strcpy(dst, \"%s\") ______ %s\n", str1, ft_strcpy(dst, str1));
	printf("strcpy(dst, \"%s\") _________ %s\n", str1, ft_strcpy(dst, str1));

	// ft_strlcmp test

	printf("\n\n-------------ft_strcmp test-----------\n\n");
	printf("ft_strcmp(\"%s\", \"%s\") _______ %d\n", str0, str1, ft_strcmp(str0, str1));
	printf("strcmp(\"%s\", \"%s\") __________ %d\n", str0, str1, strcmp(str0, str1));

	// ft_strdup test

	printf("\n\n-------------ft_strdup test-----------\n\n");	
	str2 = ft_strdup(str1);
	str3 = strdup(str1);
	printf("ft_strdup(\"%s\") ___________ %s\n", str1, str2);
	printf("strdup(\"%s\") ______________ %s\n", str1, str3);

	


return (0);
}