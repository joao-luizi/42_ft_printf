# ft_printf

## Introduction
ft_printf is the second project in the 42 curriculum and consists of re-implementing a simplified version of the C standard library's printf() function. The challenge lies in handling variadic arguments, format string parsing, and recreating the behavior of multiple format specifiers.

Once completed, ft_printf can be used as part of libft in later projects.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Learning Highlights](#learning-highlights)
- [Project Structure](#project-structure)
- [Mandatory Conversion Specifiers](#mandatory-conversion-specifiers)
- [Bonus Features](#bonus-features)
- [Compilation](#compilation)
- [Usage](#usage)
- [Resources](#resources)
- [License](#license)
- 
## Features
- Reimplementation of printf with key specifiers
- Fully norm-compliant and leak-free
- Handles int, char, string, hex, unsigned, and pointer types
- Bonus: support for format flags (-, 0, ., #, +, space) and minimum field width

## Learning Highlights
- Gained hands-on experience with variadic functions using stdarg.h
- Learned to build robust parsers for format strings and specifiers
- Developed clean and modular handling for output formatting and internal state
- Worked with bitflags and conditional rendering logic in the bonus

## Project Structure
```
├── libft/
│   └── ft_*.c
├── Makefile
├── ft_*.c
```
## Mandatory Conversion Specifiers
Your ft_printf must handle the following specifiers:

| Specifier             | Meaning      |
|:-----------------|-----------------:|
|%c	 | Character|
|%s	| String|
|%p	| Pointer in hexadecimal|
|%d/%i	|Signed decimal integer|
|%u	|Unsigned decimal integer|
|%x	|Hexadecimal (lowercase)|
|%X	|Hexadecimal (uppercase)|
|%%	|Literal % character|

All formatting behavior is modeled after standard printf, minus buffering.

## Bonus Features
Handled the following formatting flags and modifiers:

| Flag             | Description      |
|:-----------------|-----------------:|
| -                |	Left-justify the output |
| 0                | 	Zero-padding     |
| .                | Precision for numbers and strings     |
| Width            | Minimum field width    |
| #                | Alternate form (0x, 0X, etc.) for hex    |
| +                | Always show sign for numeric output    |
| (space)          | Adds a space before positive numbers     |

## Compilation
To compile the library:

```bash

make        # builds mandatory part
make bonus  # builds with bonus features
make clean  # removes object files
make fclean # removes object files and archive
make re     # rebuilds everything
This creates libftprintf.a at the root of the repository.
```
## Usage
Example usage in a C file:

```c

#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello %s! Your score is %+05d out of 100.\n", "João", 42);
    return (0);
}
```
Compile with:

```bash
cc main.c -L. -lftprintf
```
## License
This project is licensed under the [MIT License](LICENSE).
