//Koпирайте файл /etc/passwd в текущата ви работна директория и променете разделителят на копирания 
//файл от ":", на "?"

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char * argv[])
{

if(argc != 2)
{
	fprintf(stderr,"Not enough arguments!");
	exit(1);
}
int fdRead;
int fdWrite;
char symbol;
char specialSym = '?';

if((fdRead=open(argv[1],O_RDONLY)) == -1)
{
	fprintf(stderr,"Error while opening file for reading");
	exit(2);	
}

if((fdWrite=open("changed.txt", O_CREAT | O_RDWR)) == -1)
{
	fprintf(stderr,"Error while opening file for writing");
	close(fdRead);
	exit(3);
}

while(read(fdRead,&symbol,1))
{
if( symbol == ':' )
write(fdWrite, &specialSym, 1);
else
write(fdWrite, &symbol, 1);
}

exit(0);
}
