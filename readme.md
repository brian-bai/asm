# Tips
## save the i,s,o file in the compile process
- gcc -save-temps -o hello hello.c
## shell script for simple asm64 debug
- as64.sh

## GDB
- gdb tui
```
as simpleoutput.s -o simpleoutput.o -g
ld simpleoutput.o -o simpleoutput
gdb -tui simpleoutput
> b *_start
> r
> tui reg all
> tui new-layout example {-horizantal asm 1 regs 1} 2 status 0 cmd 1
> layout example
> n
> refresh
> quit
```
- gdb init
```
vi ~/.gdbinit
tui new-layout asmlayout {-horizantal asm 1 regs 1} 2 status 0 cmd 1
tui new-layout clayout {-horizantal src 1 asm 1 regs 1} 2 status 0 cmd 1
# gdb console usage: layout asm layout
```
