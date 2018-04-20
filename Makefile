all: hello
clean:
	@rm -f hello

test: all
	./hello
