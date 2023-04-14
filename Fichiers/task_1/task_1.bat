ghdl -a task_1.vhd
ghdl -a task_1_tb.vhd
ghdl -e task_1_tb
ghdl -r task_1_tb
ghdl -r task_1_tb --vcd=task_1.vcd
gtkwave task_1.vcd