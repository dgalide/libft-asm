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

int main()
{
	void	*d1;
	void	*d2;

	d1 = (char *)malloc(sizeof(char) * 10);
	d2 = (char *)malloc(sizeof(char) * 10);

	ft_bzero((char *)d1, 10);
}