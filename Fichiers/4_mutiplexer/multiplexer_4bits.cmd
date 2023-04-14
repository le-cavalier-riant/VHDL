ghdl -s multiplexer_4bits.vhdl
ghdl -a multiplexer_4bits.vhdl
ghdl -a multiplexer_4bits_tb.vhdl
ghdl -e multiplexer_4bits_tb
ghdl -r multiplexer_4bits_tb
ghdl -r multiplexer_4bits_tb --vcd=multiplexer_4bits.vcd
gtkwave multiplexer_4bits.vcd