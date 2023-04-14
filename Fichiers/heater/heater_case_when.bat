ghdl -a heater_case_when.vhdl
ghdl -a heater_case_when_tb.vhdl
ghdl -e heater_case_when_tb
ghdl -r heater_case_when_tb
ghdl -r heater_case_when_tb --vcd=heater_case_when.vcd
gtkwave heater_case_when.vcd