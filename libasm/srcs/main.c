#include <stdio.h>

extern size_t ft_strlen(const char *s);
extern int ft_strcmp(const char *s1, const char *s2);

int main() {
	size_t len = ft_strlen("hello world");
	printf("%zu\n", len);

	int cmp = ft_strcmp("hellooo", "helloo");
	printf("%d\n", cmp);
}
