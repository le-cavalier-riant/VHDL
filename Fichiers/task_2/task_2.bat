ghdl -a task_2.vhd
ghdl -a task_2_tb.vhd
ghdl -e task_2_tb
ghdl -r task_2_tb --vcd=task_2.vcd
gtkwave task_2.vcd