ghdl -a full_adder.vhdl
ghdl -a full_adder_tb.vhdl
ghdl -e full_adder_tb
ghdl -r full_adder_tb
ghdl -r full_adder_tb --vcd=full_adder.vcd
gtkwave full_adder.vcd