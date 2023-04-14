ghdl -a multiplexer_clock.vhd
ghdl -a multiplexer_clock_tb.vhd
ghdl -e multiplexer_clock_tb
ghdl -r multiplexer_clock_tb
ghdl -r multiplexer_clock_tb --vcd=multiplexer_clock.vcd
gtkwave multiplexer_clock.vcd