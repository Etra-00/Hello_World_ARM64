
hello:
	@echo "Building 'Hello_World_ARM64'"
	@clang -o main main.s -e _start && echo "Build Successful!"
