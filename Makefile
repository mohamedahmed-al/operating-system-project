CC = gcc
CFLAGS = -Wall -g

SRC1 = process_creation.c
SRC2 = file1.c file2.c
SRC3 = simple_program.c

TARGET1 = process_creation
TARGET2 = output_program
TARGET3 = simple_program

all: $(TARGET1) $(TARGET2) $(TARGET3)

$(TARGET1): $(SRC1)
	$(CC) $(CFLAGS) $(SRC1) -o $(TARGET1)

$(TARGET2): $(SRC2)
	$(CC) $(CFLAGS) $(SRC2) -o $(TARGET2)

$(TARGET3): $(SRC3)
	$(CC) $(CFLAGS) $(SRC3) -o $(TARGET3)

run:
	@echo "Running $(TARGET1)"
	./$(TARGET1)
	@echo "Running $(TARGET2)"
	./$(TARGET2)
	@echo "Running $(TARGET3)"
	./$(TARGET3)

clean:
	rm -f $(TARGET1) $(TARGET2) $(TARGET3)

