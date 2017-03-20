#include "libft.h"

void	buff_sub_join(char *str, t_buffer *b, int len)
{
	int i;

	i = 0;
	while (str && str[i] && i < len)
	{
		if (b->buff == BUFFER)
		{
			write(1, b->str_buff, b->buff);
			b->buff = 0;
		}
		b->str_buff[b->buff] = str[i];
		b->buff = b->buff + 1;
		i++;
	}
	if (b->buff >= BUFFER)
	{
		write(1, b->str_buff, BUFFER);
		b->buff = 0;
	}
}