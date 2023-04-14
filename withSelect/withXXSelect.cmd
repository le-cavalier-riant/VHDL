ghdl -a withXXSelect.vhdl
ghdl -a withXXSelect_tb.vhdl
ghdl -e withXXSelect_tb
ghdl -r withXXSelect_tb --vcd=withXXSelect.vcd
gtkwave withXXSelect.vcd