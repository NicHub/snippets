// remove_ctrl_c.c
// gcc remove_ctrl_c.c -o remove_ctrl_c && ./remove_ctrl_c
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

/**
    Remove the characters ^C with ANSI escape codes.
    (see https://en.wikipedia.org/wiki/ANSI_escape_code)

    \b     : Move cursor one character on the left.
    \b     : Idem
    \033[K : Delete all the characters on the right of
             the cursor until the end of the line.
             You can also use two spaces if you prefer,
             but they will be present in the output although
             they are not visible.
    \n     : Add a new line. This is optional,
             but if you remove it and some characters
             are printed on the last line, the terminal
             will add an extra % character to indicate
             that the new line character was absent.

    Note that, as the printf command is buffered,
    we need to use the fflush command before the end
    of the program to force stdout to be updated.

*/
void handleSignal(int signal)
{
    printf("\b\b\033[K\n");
    fflush(stdout);
    exit(EXIT_SUCCESS);
}

int main()
{
    signal(SIGINT, handleSignal);
    printf("Remove ^C on exit!");
    fflush(stdout);
    while (1)
    {
    }
    return 0;
}
