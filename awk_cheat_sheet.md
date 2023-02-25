# AWK Cheat Sheet

## Basic Syntax

awk '[pattern] {action}' [file]

## Patterns

- `/pattern/` : Matches lines containing the specified pattern.
- `! /pattern/` : Matches lines that do not contain the specified pattern.
- `$1 ~ /pattern/` : Matches lines where the first field contains the specified pattern.
- `$NF ~ /pattern/` : Matches lines where the last field contains the specified pattern.
- `/pattern1/ && /pattern2/` : Matches lines containing both pattern1 and pattern2.
- `/pattern1/ || /pattern2/` : Matches lines containing either pattern1 or pattern2.

## Actions

- `{print}` : Prints the entire line.
- `{print $1}` : Prints the first field.
- `{print $NF}` : Prints the last field.
- `{printf "format", expression}` : Prints formatted output.
- `{variable = expression}` : Assigns a value to a variable.
- `{if (condition) action}` : Executes an action if the condition is true.
- `{if (condition) action1 else action2}` : Executes action1 if the condition is true, otherwise executes action2.
- `{while (condition) action}` : Repeats the action as long as the condition is true.
- `{for (variable = start; variable <= end; variable++) action}` : Repeats the action for the specified range of values.

## Variables

- `$0` : Refers to the entire input line.
- `$1` : Refers to the first field.
- `$NF` : Refers to the last field.
- `FS` : Field separator (default is whitespace).
- `OFS` : Output field separator (default is whitespace).
- `RS` : Record separator (default is newline).
- `ORS` : Output record separator (default is newline).
- `NF` : Number of fields in the current input line.
- `NR` : Current input line number.

## Examples

- `awk '{print}' file.txt` : Prints the contents of file.txt to the console.
- `awk '/pattern/ {print $1}' file.txt` : Prints the first field of lines containing "pattern" in file.txt.
- `awk '{printf "%-10s %-10s %-10s\n", $1, $2, $3}' file.txt` : Prints the first three fields of file.txt with a width of 10 characters for each field.
- `awk '{total += $1} END {print total}' file.txt` : Sums the values in the first field of file.txt and prints the total at the end.
- `awk -F"," '{print $2, $1}' file.txt` : Prints the second field followed by the first field of lines in file.txt, where the fields are separated by commas.
- `awk '$1 > 10 && $2 < 20 {print}' file.txt` : Prints lines from file.txt where the first field is greater than 10 and the second field is less than 20.

Note that this is just a basic overview of `awk`. There are many more patterns, actions, and variables available. To learn more, refer to the `awk` manual page (`man awk`) or online documentation.
