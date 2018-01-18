//Реализирайте команда cat, работеща с произволен брой подадени входни параметри.

#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char * argv[])
{

int i = 1;
int fd;
char symbol;

	while(i < argc)
	{
	   if((fd = open(argv[i] , O_RDONLY)) == -1)
	     { 
		fprintf(stderr,"Error while opening file!"); 
		exit(-1); 
	     }
	   while (read(fd, &symbol, 1))
		write(1, &symbol,1);

	   close(fd);
	   i++;					
	}

exit(0);

}

