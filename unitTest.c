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
void	*ft_memset(void *b, int c, size_t len);

int main()
{
	void	*d1;
	void	*d2;

	d1 = (char *)malloc(sizeof(char) * 10);
	d2 = (char *)malloc(sizeof(char) * 10);

	memset((char *)d1, 42, 9);
	ft_memset((char *)d1, 42, 9);
}