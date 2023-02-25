# Sed Cheat Sheet

## Basic Syntax

sed [options] [commands] [filename]

## Options

- `-n` : Suppresses automatic printing of pattern space. Only explicitly printed lines are output.
- `-i` : Modifies the file in place. Use with caution.
- `-e` : Specifies a command to be executed.
- `-f` : Specifies a file containing sed commands.

## Commands

- `p` : Prints the pattern space.
- `d` : Deletes the pattern space.
- `s/old/new/` : Replaces the first occurrence of `old` with `new` in the pattern space.
- `s/old/new/g` : Replaces all occurrences of `old` with `new` in the pattern space.
- `s/old/new/3` : Replaces the third occurrence of `old` with `new` in the pattern space.
- `s/old/new/ig` : Replaces all occurrences of `old` with `new` in the pattern space, ignoring case.
- `i\` : Inserts text before the pattern space.
- `a\` : Appends text after the pattern space.
- `c\` : Changes the pattern space to new text.
- `q` : Quits sed immediately.
- `r filename` : Reads the contents of `filename` and inserts it after the pattern space.
- `w filename` : Writes the pattern space to `filename`.

## Examples

- `sed 's/apple/orange/g' file.txt` : Replaces all occurrences of "apple" with "orange" in file.txt and prints the result to the console.
- `sed -n '3,5p' file.txt` : Prints lines 3 to 5 of file.txt to the console.
- `sed -i 's/apple/orange/g' file.txt` : Replaces all occurrences of "apple" with "orange" in file.txt and saves the changes to the file.
- `sed '1i\New line' file.txt` : Inserts "New line" at the beginning of file.txt.
- `sed '/apple/d' file.txt` : Deletes all lines containing the word "apple" from file.txt.

Note that this is just a basic overview of `sed`. There are many more commands and options available. To learn more, refer to the `sed` manual page (`man sed`) or online documentation.
