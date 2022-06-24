all: install

dev:
	cargo build
	cargo test
	cargo clippy
	cargo fmt

install:
	cargo build --release
	ln -snf ${PWD}/target/release/libeim.dylib /usr/local/lib/emacs/
