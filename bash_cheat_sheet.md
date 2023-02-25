# Bash Cheat Sheet

Bash is a Unix shell and command language that allows users to interact with the system through the command line interface. This cheat sheet provides an overview of commonly used syntax and commands in Bash.

## Basic Commands

### Navigation

- **`cd [directory]`**: Change directory to the specified directory.
- **`ls`**: List files and directories in the current directory.
- **`pwd`**: Print the current working directory.

### Manipulating Files and Directories

- **`mkdir [directory]`**: Create a new directory.
- **`touch [file]`**: Create a new file.
- **`cp [source] [destination]`**: Copy a file or directory to a new location.
- **`mv [source] [destination]`**: Move a file or directory to a new location.
- **`rm [file]`**: Delete a file.
- **`rm -r [directory]`**: Delete a directory and all its contents.

### Input and Output

- **`echo [message]`**: Print a message to the terminal.
- **`cat [file]`**: Print the contents of a file to the terminal.
- **`> [file]`**: Redirect output to a file, overwriting the existing contents.
- **`>> [file]`**: Redirect output to a file, appending to the existing contents.

## Pipes and Filters

### Pipes

- **`|`**: Pipe the output of one command to the input of another command.

### Filters

- **`grep [pattern]`**: Search for a pattern in a file.
- **`sed [pattern]`**: Stream editor for modifying the contents of a file.
- **`awk [pattern]`**: Text processing tool for manipulating data in a file.

## Operators

### Logical Operators

- **`&&`**: Logical AND operator. If the first command executes successfully (returns a zero exit status), then the second command is executed.
- **`||`**: Logical OR operator. If the first command fails (returns a non-zero exit status), then the second command is executed.

### Examples

- **`cd /path/to/dir && ls`**: Change directory to `/path/to/dir`, and if successful, list the contents of the directory.
- **`grep pattern file || echo "Pattern not found"`**: Search for `pattern` in `file`. If not found, print "Pattern not found".
- **`command1 && command2 || command3`**: If `command1` succeeds, execute `command2`. Otherwise, execute `command3`.
 
## Shell Scripting

### Variables

```bash
# Assigning a variable
name="John"

# Using a variable
echo "My name is $name"

# If statement
if [ $a -gt $b ]; then
    echo "$a is greater than $b"
fi

# If-else statement
if [ $a -gt $b ]; then
    echo "$a is greater than $b"
else
    echo "$b is greater than $a"
fi

# If-elif-else statement
if [ $a -gt $b ]; then
    echo "$a is greater than $b"
elif [ $a -eq $b ]; then
    echo "$a is equal to $b"
else
    echo "$b is greater than $a"
fi

for i in {1..5}; do
    echo "Number: $
