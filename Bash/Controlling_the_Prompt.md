<font size=64>Controlling the Prompt</font>

| char | explanation |
| ------ | ------------------------------- |
| \a         | A bell character. |
| \d         | The date, in "Weekday Month Date" format (e.g., "Tue May 26"). |
| \D{format} | The format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required. |
| \e         | An escape character. |
| \h         | The hostname, up to the first ‘.’. |
| \H         | The hostname. |
| \j         | The number of jobs currently managed by the shell. |
| \l         | The basename of the shell’s terminal device name. |
| \n         | A newline. |
| \r         | A carriage return. |
| \s         | The name of the shell, the basename of $0 (the portion following the final slash). |
| \t         | The time, in 24-hour HH:MM:SS format. |
| \T         | The time, in 12-hour HH:MM:SS format. |
| \@         | The time, in 12-hour am/pm format. |
| \A         | The time, in 24-hour HH:MM format. |
| \u         | The username of the current user. |
| \v         | The version of Bash (e.g., 2.00) |
| \V         | The release of Bash, version + patchlevel (e.g., 2.00.0) |
| \w         | The current working directory, with $HOME abbreviated with a tilde (uses the $PROMPT_DIRTRIM variable). |
| \W         | The basename of $PWD, with $HOME abbreviated with a tilde. |
| \!         | The history number of this command. |
| \#         | The command number of this command. |
| \$         | If the effective uid is 0, #, otherwise $. |
| \nnn       | The character whose ASCII code is the octal value nnn. |
| \\         | A backslash. |
| \[         | Begin a sequence of non-printing characters. This could be used to embed a terminal control sequence into the prompt. |
| \]         | End a sequence of non-printing characters. |

[GNU: 6.9 Controlling the Prompt](https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html)


