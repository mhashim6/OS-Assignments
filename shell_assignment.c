#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 80
#define DELIMITER " \n"
#define HISTORY_SIZE 10

size_t read_input(void);
size_t tokenize_line(char *line);
void execute(void);
void update_history(char *line);
void print_history(void);
void terminate(void);

char *history[HISTORY_SIZE];
size_t history_index;

char *args[MAX_LINE / 2 + 1];

int should_run = 1;
int should_wait = 1;

int main(void)
{

    while (should_run)
    {
        printf("osh>");
        fflush(stdout);

        size_t args_size = read_input();

        if (strcmp(args[0], "history") == 0)
            print_history();
        else if (strcmp(args[0], "exit") == 0)
            should_run = 0;
        else if (args[0][0] != '\0' && args[0][0] == '!')
        {
            if (args[0][1] != '\0' && args[0][1] == '!')
            {
                tokenize_line(history[(history_index - 2) % HISTORY_SIZE]);
                execute();
            }
            else
            {
                args[0][0] = '0';
                int index = atoi(args[0]);
                tokenize_line(history[(index - 1) % HISTORY_SIZE]);
                execute();
            }
        }

        else
        {
            should_wait = (strcmp(args[args_size - 1], "&") == 0) ? 0 : 1;
            execute();
        }
        printf("\n");
    }
    return 0;
}

size_t read_input(void)
{
    char line[MAX_LINE];
    fgets(line, MAX_LINE, stdin);
    char *original_line = malloc(strlen(line) * sizeof(char));
    strcpy(original_line, line);
    update_history(original_line);
    return tokenize_line(line);
}

size_t tokenize_line(char *line)
{
    char *tok = strtok(line, DELIMITER);
    size_t token_count = 0;
    for (size_t i = 0; tok; i++)
    {
        args[i] = tok;
        tok = strtok(NULL, DELIMITER);
        token_count++;
    }
    args[token_count] = NULL;

    return token_count;
}

void execute(void)
{
    __pid_t pid;
    pid = fork();
    if (pid < 0)
    {
        printf("ERROR: forking child process failed\n");
        terminate();
    }
    else if (pid == 0)
    {
        execvp(args[0], args);
    }
    else
    {
        if (should_wait)
        {
            wait(NULL);
        }
    }
}

void update_history(char *line)
{
    if (history_index > HISTORY_SIZE - 1)
    {
        for (size_t i = 0; i < HISTORY_SIZE; i++)
            history[i] = history[i + 1];

        history[HISTORY_SIZE - 1] = line;
    }
    else
        history[history_index] = line;

    history_index++;
}

void print_history(void)
{
    size_t index = history_index;
    for (int i = HISTORY_SIZE - 1; i >= 0; i--)
    {
        if (history[i] != NULL)
        {
            printf("%ld %s", index--, history[i]);
        }
    }
}

void terminate(void) { should_run = 0; }