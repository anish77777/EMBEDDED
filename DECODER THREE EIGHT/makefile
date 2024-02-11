# Makefile for compiling and simulating VHDL code

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulation parameters
SIMULATION_TIME = 100ns

# List of source files
SRC = Decoder_3x8.vhdl Decoder_3x8_tb.vhdl

# Default target
all: compile simulate

# Compile the VHDL files
compile:
    $(VHDL_COMPILER) -a $(SRC)

# Simulate the design
simulate:
    $(VHDL_COMPILER) -e Decoder_3x8_tb
    $(VHDL_COMPILER) -r Decoder_3x8_tb --stop-time=$(SIMULATION_TIME) --wave=wave.ghw

# Clean intermediate files
clean:
    rm -f *.o *.cf *.ghw
