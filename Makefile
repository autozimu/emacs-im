all: build install

build:
	cargo build --release

install:
	ln -s ${PWD}/target/release/libeim.dylib /usr/local/lib/emacs/eim.so
