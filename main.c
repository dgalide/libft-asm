#include <unistd.h>
#include <stdio.h>
#include <string.h>

int ft_putchar(char c);
int ft_isupper(char c);
int	ft_islower(char c);
int	ft_isdigit(char c);
int ft_strlen(char *str);
int	ft_puts(char *str);


void	int_checker(int a, int b, char *function_name, int attempt)
{
	if (a != b) 
		printf("[ %d, %d ][ %s ][ %d ][ error ] ft_strlen's output differ from strlen's output\n", a, b, function_name, attempt);
	else
		printf("[ %d, %d ][ %s ][ %d ][ success ] OK\n", a, b, function_name, attempt);
}

int main(void)
{
	int a;
	int b;

	a = ft_strlen("blabla");
	b = strlen("blabla");

	int_checker(a, b, "ft_strlen", 0);

	a = ft_strlen("b");
	b = strlen("b");

	int_checker(a, b, "ft_strlen", 1);

	a = ft_strlen("");
	b = strlen("");

	int_checker(a, b, "ft_strlen", 2);

	return 0;
}
