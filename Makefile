main: main.o
	gcc -o main  -L./raylib-5.5_linux_amd64/lib/ main.o -l:libraylib.a -lm

main.o: main.rs
	rustc --edition 2021 -g -C opt-level=z --emit=obj -C panic="abort" main.rs
