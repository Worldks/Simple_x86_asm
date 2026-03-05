# Overview  
Программа принимает произвольное количество аргументов командной строки и   
печатает самый длинный из них (в поток стандартного вывода).  
Программа будет работать только под управление Unix на x86 совместимой машине.  
Больше моих программ на [ассемблере](https://github.com/Worldks/TaskBook_Stolyarov_Andrey_Viktorovich/tree/master/assembler_projects).  

# Build
*Необходимо установить nasm*  
>sudo apt install nasm

>nasm -f elf32 -g -F dwarf main.asm -o main.o

>ld -m elf_i386 -o main main.o  
