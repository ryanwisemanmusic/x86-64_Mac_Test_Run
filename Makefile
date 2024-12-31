# Set the target architecture and macOS version
ARCH = x86_64
MIN_MACOS_VERSION = 10.13

# Set file names
SOURCE = test.asm
OBJECT = test.o
EXECUTABLE = test

# Assemble the program
%.o: %.asm
	nasm -f macho64 $< -o $@

# Link the object file to create the executable
$(EXECUTABLE): $(OBJECT)
	ld $(OBJECT) -o $(EXECUTABLE) -arch $(ARCH) -macos_version_min $(MIN_MACOS_VERSION) -e _start -static

# Clean up generated files
clean:
	rm -f $(OBJECT) $(EXECUTABLE)

# Run the program
run: $(EXECUTABLE)
	./$(EXECUTABLE)

# Debug using lldb
debug: $(EXECUTABLE)
	lldb ./$(EXECUTABLE)
