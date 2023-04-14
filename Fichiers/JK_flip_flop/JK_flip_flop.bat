ghdl -a JK_flip_flop.vhdl
ghdl -a JK_flip_flop_tb.vhdl
ghdl -e JK_flip_flop_tb
ghdl -r JK_flip_flop_tb
ghdl -r JK_flip_flop_tb --vcd=JK_flip_flop.vcd
gtkwave JK_flip_flop.vcd