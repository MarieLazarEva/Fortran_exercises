FC=gfortran
FFLAGS=-Wall -Wno-maybe-uninitialized 

all:
	$(FC) $(FFLAGS)  -c src/main.f90 -o obj/main.o
	$(FC) $(FFLAGS)  -o bin/app  obj/main.o

#clean:
	rm -rf obj/*
#	rm -rf bin/*

#run:
	cd ./bin; ./app;
	cat bin/output.txt
