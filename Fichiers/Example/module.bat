rem analyse du module
ghdl -a module.vhd

rem analyse du banc de test
ghdl -a module_tb.vhd

rem élaboration du banc de test
ghdl -e module_tb

rem lancement du programme
ghdl -r module_tb --vcd=module.vcd

rem lancement du programme et sauvegarde dans "module.vcd"
ghdl -r module_tb --vcd=module.vcd

rem lancement du programme
gtkwave module.vcd