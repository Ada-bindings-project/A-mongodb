
CFLAGS=$(shell /usr/bin/pkg-config libmongoc-1.0 --cflags)
LIBS=$(shell /usr/bin/pkg-config libmongoc-1.0 --libs)

fixbodies:
	gnatstub -P mongodb.gpr src/*.ads --force
	cp src.orig/*.ad? src
	sed "s-pragma Ada_2012;-pragma Warnings (Off);-" src/*.adb -i
all:
	gprbuild -P examples/c_examples.gpr
	gprbuild -k -P examples/mongodb-examples.gpr

gen:
	@rm -rf src/gen .gen;mkdir -p src/gen .gen
	echo "#include <mongoc.h>" >.gen/gen.c
	cd .gen;gcc -c gen.c ${CFLAGS} -fdump-ada-spec
	cp .gen/libbson_1_0_*.ads .gen/libmongoc_1_0*.ads src/gen
	sed -f all.sed src/gen/* -i
	rm -f src/gen/libmongoc_1_0_mongoc_mongoc_iovec_h.ads
	gprbuild
	chmod -w src/gen/*.ads
	
prereqisits:
	sudo apt-get install libmongoc-dev

clean:
	git clean -xdf
