part1: source.c
	gcc source.c -std=gnu99 -lm -O0 -DN=1024 -DDENSE=1 -DBLOCKING=0 -o P2
	@./P2
	gcc source.c -std=gnu99 -lm -O3 -DN=1024 -DDENSE=1 -DBLOCKING=0 -o P2
	@./P2

part23: source.c
	@for n in 16 32 64 128 256 512 1024 2048 4096; do\
		gcc source.c -std=gnu99 -lm -O3 -DN=$$n -DDENSE=1 -DBLOCKING=8 -o P2;\
		./P2; \
	done;

part4: source.c
	@for b in 4 8 16 32 64 128 256 512 1024 2048; do\
		gcc source.c -std=gnu99 -lm -O3 -DN=2048 -DDENSE=0 -DBLOCKING=$$b -o P2;\
		./P2; \
	done;

all: source.c
	make part1
	make part23
	make part4

test: source.c
	gcc source.c -std=gnu99 -lm -O0 -DN=1024 -DDENSE=1 -DBLOCKING=0 -o P2 -Wall -Wextra