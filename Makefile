WSLENV ?= no
ifeq ($(WSLENV),)
NOWINE = 1
else
NOWINE = 0
endif

ifeq ($(OS),Windows_NT)
EXE := .exe
WINE :=
else
EXE :=
WINE := wine
endif

ifeq ($(NOWINE),1)
WINE :=
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

# Used for elf2dol
TARGET_COL := wii

TARGET := pbr_pal
BUILD_DIR := build/$(TARGET)

# Inputs
include src_dirs.mk
S_FILES := $(wildcard asm/*.s)
CPP_FILES := $(wildcard src/*.cpp)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL := $(BUILD_DIR)/$(TARGET).dol
ELF := $(DOL:.dol=.elf)
MAP := $(DOL:.dol=.map)

include obj_files.mk
O_FILES := \
	$(EXTAB_O_FILES) \
	$(EXTABINDEX_O_FILES) \
	$(SPLIT_O_FILES) \
	$(DTORS_O_FILES) \
	$(RODATA_O_FILES) \
	$(DATA_O_FILES) \
	$(SBSS2_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 3.0

# Programs
AS          := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY     := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CPP         := cpp -P
CC          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwcceppc.exe
LD          := $(WINE) tools/mwcc_compiler/GC/$(MWCC_VERSION)/mwldeppc.exe
ELF2DOL     := tools/elf2dol/elf2dol$(EXE)
SHA1SUM     := sha1sum
PYTHON      := python3

POSTPROC := tools/postprocess/postprocess.py
PRAGMAPROC := tools/pragma/pragma.py

# Options
INCLUDES := -i . -I- -i include -i include/SDK -i include/MSL_C -include include/types.h
ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc -ipa file $(INCLUDES) -W all -w nopragmas

# for postprocess.py
PROCFLAGS := -fsymbol-fixup

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

TOOLS_DIR = tools
TOOLDIRS = $(filter-out $(TOOLS_DIR)/mwcc_compiler $(TOOLS_DIR)/postprocess $(TOOLS_DIR)/pragma,$(wildcard $(TOOLS_DIR)/*))
TOOLBASE = $(TOOLDIRS:$(TOOLS_DIR)/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),$(TOOLS_DIR)/$(tool)/$(tool)$(EXE))

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

ifeq (,$(filter-out all,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
endif

# Make sure build directory exists before compiling anything
ALL_DIRS := build $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))
DUMMY != mkdir -p $(ALL_DIRS)

default: all

all: $(DOL)

$(DOL): $(ELF)
	@$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c $(TARGET).sha1

$(ELF): $(O_FILES) $(LDSCRIPT)
	@$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) $(O_FILES)
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	@$(OBJCOPY) $@ $@

$(BUILD_DIR)/%.o: %.s
	@$(AS) $(ASFLAGS) -o $@ $<
# resolve escape sequences for C++ mangled names in the .strtab section (assembler workaround).
	@$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

$(BUILD_DIR)/%.o: %.cpp
	@$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c++ -c" $@ $<

$(BUILD_DIR)/%.o: %.c
	@$(PYTHON) $(PRAGMAPROC) "$(CC)" "$(CFLAGS) -lang c99 -c" $@ $<

$(LDSCRIPT): ldscript.lcf
	@$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

.PHONY: tools $(TOOLDIRS) clean clean-tools

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

clean: clean-tools
	rm -f -d -r build

clean-tools:
	$(foreach tool,$(TOOLDIRS),$(MAKE) clean -C $(tool);)
