#include <unistd.h>
#include <stdio.h>

int ft_putchar(char c);
int ft_isupper(char c);
int	ft_islower(char c);

int main(void)
{
	printf("%d\n", ft_isupper('A'));
	printf("%d\n", ft_islower('A'));
	return 0;
}
