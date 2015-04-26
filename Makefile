part1: source.c
	gcc source.c -std=c99 -O0 -DN=1024 -DDENSE=1 -DBLOCKING=0 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=1024 -DDENSE=1 -DBLOCKING=0 -o P2
	./P2

part23: source.c
	gcc source.c -std=c99 -O3 -DN=16 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=32 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=64 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=128 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=256 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=512 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=1024 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=4096 -DDENSE=1 -DBLOCKING=8 -o P2
	./P2

part4: source.c
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=4 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=8 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=16 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=32 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=64 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=128 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=256 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DDENSE=0 -DBLOCKING=512 -o P2
	./P2

all: source.c
	make part1
	make part23
	make part4
