part1: source.c
	gcc source.c -std=c99 -O0 -DN=1024 -DTRIALS=3 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=1024 -DTRIALS=3 -o P2
	./P2

part2: source.c
	gcc source.c -std=c99 -O3 -DN=16 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=32 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=64 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=128 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=256 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=512 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=1024 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=2048 -DTRIALS=1 -o P2
	./P2
	gcc source.c -std=c99 -O3 -DN=4096 -DTRIALS=1 -o P2
	./P2