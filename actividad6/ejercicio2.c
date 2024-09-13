#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork(); 
    if (pid < 0) {
        perror("ERROR");
        exit(1);
    } else if (pid == 0) {
        printf("HIJO PID: %d\n", getpid());
        exit(0); 
    } else {
        printf("PADRE PID: %d\n", getpid());
        printf("ZOOMBIE %d\n", pid);
        sleep(60);
        wait(NULL);
    }
    return 0;
}