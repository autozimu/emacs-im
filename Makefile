all: install

dev:
	cargo build
	cargo test
	cargo clippy
	cargo fmt

install:
	cargo build --release
	mkdir -p /usr/local/lib/emacs/
	ln -snf ${PWD}/target/release/libeim.dylib /usr/local/lib/emacs/
