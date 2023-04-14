ghdl -a flip_flop.vhdl
ghdl -a flip_flop_tb.vhdl
ghdl -e flip_flop_tb
ghdl -r flip_flop_tb
ghdl -r flip_flop_tb --vcd=flip_flop.vcd
gtkwave flip_flop.vcd