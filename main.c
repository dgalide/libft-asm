#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int 	ft_putchar(char c);
int 	ft_isupper(char c);
int		ft_islower(char c);
int		ft_isdigit(char c);
int 	ft_strlen(char *str);
int		ft_puts(char *str);
void	ft_bzero(const void *s1, size_t n);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char 	*ft_strdup(const char *s1);

void	int_checker(int a, int b, char *function_name, int attempt)
{
	if (a != b) 
		printf("[ %d, %d ][ %s ][ %d ][ error ] ft_strlen's output differ from strlen's output\n", a, b, function_name, attempt);
	else
		printf("[ %d, %d ][ %s ][ %d ][ success ] OK\n", a, b, function_name, attempt);
}

int main(void)
{
	int 	a;
	int 	b;

	void	*d1;
	void	*d2;

	d1 = (char *)malloc(sizeof(char) * 10);
	d2 = (char *)malloc(sizeof(char) * 10);

	strcpy((char *)d1, "blalo");
	strcpy((char *)d2, "blafd");

	a = ft_strlen("blabla");
	b = strlen("blabla");

	int_checker(a, b, "ft_strlen", 0);

	a = ft_strlen("b");
	b = strlen("b");

	int_checker(a, b, "ft_strlen", 1);

	a = ft_strlen("");
	b = strlen("");

	int_checker(a, b, "ft_strlen", 2);

	a = ft_strlen("\0");
	b = strlen("\0");

	int_checker(a, b, "ft_strlen", 3);

	ft_bzero((char *)d1, 10);
	bzero((char *)d2, 10);

	if (memcmp(d1, d2, 10) != 0) 
		printf("[ %s ][ %d ][ error ] ft_strlen's output differ from strlen's output\n", "ft_bzero", 0);
	else
		printf("[ %s ][ %d ][ success ] OK\n", "ft_bzero", 1);



	return 0;
}
