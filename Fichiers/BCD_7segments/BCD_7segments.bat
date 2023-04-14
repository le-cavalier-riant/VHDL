ghdl -a BCD_7segments.vhdl
ghdl -a BCD_7segments_tb.vhdl
ghdl -e BCD_7segments_tb
ghdl -r BCD_7segments_tb
ghdl -r BCD_7segments_tb --vcd=BCD_7segments.vcd
gtkwave BCD_7segments.vcd