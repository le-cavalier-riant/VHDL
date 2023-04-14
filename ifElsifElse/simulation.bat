ghdl -a module.vhdl
ghdl -a testBench.vhdl
ghdl -e testBench
ghdl -r testBench
ghdl -r testBench --vcd=module.vcd
gtkwave module.vcd