ghdl -a Artus_de_Chavagnac_task_1.vhd
ghdl -a Artus_de_Chavagnac_task_1_tb.vhd
ghdl -e Artus_de_Chavagnac_task_1_tb
ghdl -r Artus_de_Chavagnac_task_1_tb
ghdl -r Artus_de_Chavagnac_task_1_tb --vcd=Artus_de_Chavagnac_task_1.vcd
gtkwave Artus_de_Chavagnac_task_1.vcd