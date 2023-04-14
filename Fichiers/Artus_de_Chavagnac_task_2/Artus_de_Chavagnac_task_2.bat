ghdl -a Artus_de_Chavagnac_task_2.vhd
ghdl -a Artus_de_Chavagnac_task_2_tb.vhd
ghdl -e Artus_de_Chavagnac_task_2_tb
ghdl -r Artus_de_Chavagnac_task_2_tb
ghdl -r Artus_de_Chavagnac_task_2_tb --vcd=Artus_de_Chavagnac_task_2.vcd
gtkwave Artus_de_Chavagnac_task_2.vcd