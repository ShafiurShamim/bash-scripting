# bash-scripting

Learning BASH Scripting...

### Positional Parameters

- \$0 is the name of the script itself
- \$1 is the first argument
- \$2 the second
- \$3 the third, and so forth. the arguments must be enclosed in brackets after \$9
- \$10 is the first argument not 10th
- \${10} is the tenth argument.

### Special Parameters

- \$# Expands to the number of command-line arguments or positional parameters in decimal
- \$? Expands to the exit status of the most recently executed foreground pipeline
- \$\* prints the all of command-line arguments in a single line, $* must be enclosed by quotes "$\*"
- $@ is same as the $\* but each parameter is a quoted string

See the [GNU Manual](https://www.gnu.org/software/bash/manual/bashref.html#Special-Parameters)

### Exit Status

- Exit code 0 Succeeded , A non-zero exit status indicates failure.
- Exit code 1 General errors, Miscellaneous errors, such as "divide by zero" and other impermissible operations
- Exit code 2 All builtins return an exit status of 2 to indicate icol_resetorrect usage, generally invalid options or missing arguments.
- If a command is not found, the child process created to execute it returns a status of 127.
- If a command is found but is not executable, the return status is 126.

See the [GNU Manual](https://www.gnu.org/software/bash/manual/bashref.html#Exit-Status)
