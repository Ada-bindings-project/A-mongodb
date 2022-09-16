
CFLAGS=$(shell /usr/bin/pkg-config libmongoc-1.0 --cflags)
LIBS==$(shell /usr/bin/pkg-config libmongoc-1.0 --libs)

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
