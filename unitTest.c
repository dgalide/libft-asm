#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>

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
void	ft_cat(int fd);
int		ft_isalpha(char c);
int		ft_isalnum(char c);
int		ft_isascii(char c);
int		ft_isprint(char c);
int		ft_tolower(char c);
int		ft_toupper(char c);

int main(int ac, char **av)
{
	void	*d1;
	void	*d2;
	char	*d3;
	int		fd;

	d1 = (char *)malloc(sizeof(char) * 6);
	d2 = (char *)malloc(sizeof(char) * 6);

	char c = ft_tolower('A');
	printf("%c\n", c);
}