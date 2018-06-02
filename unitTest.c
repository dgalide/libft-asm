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
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char 	*ft_strdup(const char *s1);
char	*ft_strcat(char *restrict s1, const char *restrict s2);

int main()
{
	void	*d1;
	void	*d2;
	char	*d3;

	d1 = (char *)malloc(sizeof(char) * 6);
	d2 = (char *)malloc(sizeof(char) * 6);

	memcpy(d1, "Hello\0", 15);
	memcpy(d2, "Bello\0", 6);

	d3 = ft_strcat(d1,d2);
	// ft_memcpy(d2, d1, 6);

	// printf("%s\n", d2);

	// ft_strlen("Hello");
	printf("%s\n", d3);
}