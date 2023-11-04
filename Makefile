all: build/Makefile
	cd build && $(MAKE) -j

build/Makefile:
	mkdir build && cd build && cmake ..

clean:
	rm -rf build bin