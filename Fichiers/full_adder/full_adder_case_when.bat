ghdl -a full_adder_case_when.vhdl
ghdl -a full_adder_case_when_tb.vhdl
ghdl -e full_adder_case_when_tb
ghdl -r full_adder_case_when_tb
ghdl -r full_adder_case_when_tb --vcd=full_adder_case_when.vcd
gtkwave full_adder_case_when.vcd