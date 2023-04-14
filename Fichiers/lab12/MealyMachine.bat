ghdl -a MealyMachine.vhd
ghdl -a MealyMachine_tb.vhd
ghdl -e MealyMachine_tb
ghdl -r MealyMachine_tb
ghdl -r MealyMachine_tb --vcd=MealyMachine.vcd
gtkwave MealyMachine.vcd