#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * infinite_while - Infinite loop to keep the program running
 *
 * Return: 0
 */
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - Entry point of the program
 *
 * Return: Always 0
 */
int main(void)
{
    pid_t child_pid;
    int i;

    for (i = 0; i < 5; i++)
    {
        child_pid = fork(); /* Create child process */

        if (child_pid == -1)
        {
            perror("Fork failed");
            exit(EXIT_FAILURE);
        }

        if (child_pid == 0)
        {
            /* Child process */
            printf("Zombie process created, PID: %d\n", getpid());
            exit(0); /* Child exits immediately, becoming a zombie */
        }
    }

    infinite_while(); /* Parent process enters infinite while loop */

    return (0);
}
