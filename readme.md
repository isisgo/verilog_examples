# How to compile:

### First we have to compile the verilogs:

		iverilog -o <output_file> <file>.v <file2>.v

### The compiled file will appear in the paste with the name specified above. Now we can run it:
		
		vvp <output_file>

### After this, the test file generates a .vcd file with the specified name. The command to run is:

		gtkwave <file>.vcd

