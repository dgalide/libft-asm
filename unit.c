#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *ft_strcat(char *s1, char *s2);
void	ft_puts(char *s);
char 		*ft_strdup(const char *s1);

int main() {

	char *t3 = ft_strdup(NULL);

	printf("%s\n", t3);

	return 0;
}
