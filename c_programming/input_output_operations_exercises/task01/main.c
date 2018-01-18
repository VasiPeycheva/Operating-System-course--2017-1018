//Реализирайте команда cp, работеща с два аргумента, подадени като входни параметри.

#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <err.h>

int main(int argc, char* argv[])
{
	if(argc != 3)
	{
		errx(1,"Not enough arguments!");
		exit(1);	
	}	

	int fd1;
	int fd2;
	char c;

	if ( ( fd1 = open(argv[1], O_RDONLY) ) == -1 ) {
		err(2, "File failed to open in read mode");
		exit(2);
	}

	if ( ( fd2 = open(argv[2], O_CREAT|O_WRONLY) ) == -1 ){
		err(3, "File failed to open in write mode");
		close(fd1);
		exit(3);
	}

	while ( read(fd1, &c, 1) ){
		write(fd2, &c, 1);
	}

	close(fd1);
	close(fd2);
	exit(0);
}

