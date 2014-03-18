run: true
	./true

true: true.o
	ld -o $@ -e main $^

true.o: true.asm
	nasm -f macho64 -o $@ $^
