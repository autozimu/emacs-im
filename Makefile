all: install

dev:
	cargo build
	cargo test
	cargo clippy
	cargo fmt

install:
	cargo build --release
	ln -s ${PWD}/target/release/libeim.dylib /usr/local/lib/emacs/eim.so
