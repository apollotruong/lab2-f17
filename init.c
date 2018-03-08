// init: The initial user-level program
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *argv[] = { "sh", 0 };

int
main(void)
{
  int pid, wpid;

printf(1,"begin init%c\n");

  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  dup(0);  // stderr

printf(1,"before loop%c\n");

  for(;;){

printf(1,"fuck%c\n");
    printf(1, "init: starting sh\n");
    pid = fork();
    if(pid < 0){

printf(1,"this%c\n");
      printf(1, "init: fork failed\n");
printf(1,"this2%c\n");
      exit();
    }
    if(pid == 0){

printf(1,"shit%c\n");
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");

printf(1,"shit2%c\n");
      exit();
    }

printf(1,"hate this class%c\n");
    while((wpid=wait()) >= 0 && wpid != pid)

printf(1,"dumbitch%c\n");
      printf(1, "zombie!\n");
  }
}
