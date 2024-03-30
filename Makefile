CC = gcc
NASM = nasm
CFLAGS = -Wall -Wextra -I$(INCLUDE_DIR)
NASMFLAGS = -f elf64

BUILD_DIR = linkers

SRC_ASM_DIR = $(shell dirname "./my_libasm/S/*.S")
SRC_C_DIR = $(shell dirname "./my_libasm/c/*.c")
INCLUDE_DIR = $(shell dirname "./my_libasm/h/*.h")

SRC_ASM = $(wildcard $(SRC_ASM_DIR)/*.S)
SRC_C = $(wildcard $(SRC_C_DIR)/*.c)
HEADERS = $(wildcard $(INCLUDE_DIR)/*.h)

OBJ_ASM = $(patsubst $(SRC_ASM_DIR)/%.S,$(BUILD_DIR)/%.o,$(SRC_ASM))
OBJ_C = $(patsubst $(SRC_C_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRC_C))

EXECUTABLE = program

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ_ASM) $(OBJ_C)
	@$(CC) -o $(EXECUTABLE) $(OBJ_ASM) $(OBJ_C)

$(BUILD_DIR)/%.o: $(SRC_ASM_DIR)/%.S | $(BUILD_DIR)
	@$(NASM) $(NASMFLAGS) $< -o $@

$(BUILD_DIR)/%.o: $(SRC_C_DIR)/%.c $(HEADERS) | $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

clean:
	@rm -rf $(BUILD_DIR) $(EXECUTABLE)

.PHONY: all clean