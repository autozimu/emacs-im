all: install

dev:
	cargo build
	cargo test
	cargo clippy
	cargo fmt

install:
	cargo build --release
	ln -sv ${PWD}/target/release/libeim.dylib ~/.emacs.d/lisp
