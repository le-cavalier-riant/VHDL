ghdl -a heater.vhdl
ghdl -a heater_tb.vhdl
ghdl -e heater_tb
ghdl -r heater_tb
ghdl -r heater_tb --vcd=heater.vcd
gtkwave heater.vcd